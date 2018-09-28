pipeline {
    agent any

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
        }
        stage('Deploy') {
            steps {
                echo 'Deploying....'
		sh "cd employees && mvn deploy"
            }
        }
    }
}
