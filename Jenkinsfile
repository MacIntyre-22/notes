pipeline {
    agent any
    stages {
        stage('Build') {
            steps {
                sh 'docker build -t my-notes:latest .'
            }
        }
        stage('Deploy') {
            steps {
                sh '''
                    docker stop my-notes || true
                    docker rm my-notes || true
                    docker run -d \
                        --name my-notes \
                        --network npm-network \
                        --restart unless-stopped \
                        my-notes:latest
                '''
            }
        }
    }
}