# Pipline Project

- transferring agents jobs to a pipline project [[jenkins]]
- need pipeline plugins
- need GitHub plugins, if it invloves code management with github

### Quick Notes

- make sure files don't exists already in jenkins workspace or write commands to handle. it will fail.
- Scan Multibranch Pipeline Triggers:
    - periodically if not otherwise run, this will check branch for chnages on an interval then run builds if changes were found


## Single Branch Pipeline

```yml
pipeline {
    agent any
    stages {
        stage('cleanup') {
            steps {
                cleanWs()
            }
        }
        stage('fetch') {
            steps {
                sh 'git clone https://github.com/your-account/tilth/'
                sh 'mkdir samplesite'
                sh 'mv tilth/*.html samplesite/'
                sh 'mv tilth/dockerfile .'
            }
        }
        stage('build') {
            steps {
                sh 'docker build -t jenkins-tilth-web .'
            }
        }
        stage('deploy') {
            steps {
                sh 'docker stop jenkins-tilth-web || true && docker rm jenkins-tilth-web ||
                true'
                sh 'docker run -dit --name jenkins-tilth-web -p 8000:80 jenkins-tilth-web'
            }
        }
    }
}
```
## Multibranch Pipeline

- add Jenkinsfile to the repo

```yml
pipeline {
    agent any
    environment {
        CONTAINER_NAME = "tilth-website-${env.BRANCH_NAME}"
        PORT = "${env.BRANCH_NAME == 'development' ? '8001' : '8002'}"
    }
    stages {
        stage('fetch') {
            steps {
                sh """
                git checkout ${env.BRANCH_NAME}
                mkdir samplesite
                mv *.html samplesite/"""
            }
        }
        stage('build') {
            steps {
                sh "docker build -t ${CONTAINER_NAME} ."
            }
        }
        stage('deploy') {
            steps {
                sh """
                docker stop ${CONTAINER_NAME} || true && docker rm ${CONTAINER_NAME} || true
                docker run -dit --name ${CONTAINER_NAME} -p ${env.BRANCH_NAME == 'main' ? '8002' : '8001'}:80 ${CONTAINER_NAME}"""
            }
        }
        stage('cleanup') {
            steps {
                cleanWs()
            }
        }
    }
}
```