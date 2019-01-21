pipeline {
	agent any
	stages {
		stage('Deploy') {
			steps {
				sh 'docker-compose -p coalbase -f ./docker-compose.yml up -d'
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





