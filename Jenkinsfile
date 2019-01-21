pipeline {
	agent any
	stages {
		stage('Deploy') {
			steps {
				script {
					docker.withServer('tcp://10.10.10.25:2376', 'CoalbaseVM') {
						sh 'docker info'
						sh 'docker stack deploy -c ./docker-compose.yml message-broker'
					}
				}
			}
			post {
				success {
					updateGitlabCommitStatus name: "Running", state: "success"
				}
				failure {
					updateGitlabCommitStatus name: "Running", state: "failed"
				}
				unstable {
					updateGitlabCommitStatus name: "Running", state: "failed"
				}
			}
		}
	}
}





