pipeline {
    agent any

	   parameters {
        string(defaultValue: "$emailRecipients",
                description: 'List of email recipients',
                name: 'EMAIL_RECIPIENTS')
		}
		
    stages {
        stage('Build') {
            steps {
                echo 'Building..'
		sh "cd employees && mvn clean install"
            }
        }
        stage('Test') {
            steps {
                echo 'Testing..'
				sh "cd employees && mvn clean test"
							
			}
		post {
		always {
		emailext body: 'Jenkins Pipeline Status',
		attachLog: true,
		compressLog: true,
		mimeType: 'text/html',
		subject: "Pipeline Build ${BUILD_NUMBER}",
		to: "${params.EMAIL_RECIPIENTS}"
				}
		}
        }
    }
}
