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
                        --network your-nginx-network \
                        -p 8085:80 \
                        --restart unless-stopped \
                        my-notes:latest
                '''
            }
        }
    }
}