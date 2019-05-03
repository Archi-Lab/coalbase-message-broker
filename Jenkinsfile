pipeline {
	agent any
	stages {
		stage('Deploy') {
			steps {
				script {
					docker.withServer('tcp://10.10.10.25:2376', 'CoalbaseVM') {
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
    post {
        failure {
            discordSend description: 'Jenkins Pipeline Build', footer: 'CoalBase-Message-Broker', link: env.BUILD_URL, result: currentBuild.currentResult, title: JOB_NAME, webhookURL: 'https://discordapp.com/api/webhooks/537602034015272960/9qa_bwMs5ZVuntNCg3BmHXYSDgo9gPZjHrgxsPJG8xya3hesFpm2aiAu8VcO3yNG9r59'
        }
    }	
}





