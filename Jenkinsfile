node {
    stage('Checkout') {
        checkout scm
    }

    stage('Deploy') {
        docker.withServer('tcp://10.10.10.51:2376', 'coalbase-prod-certs') {
            sh 'docker stack deploy -c ./docker-compose.yml message-broker'
        }
    }
}
