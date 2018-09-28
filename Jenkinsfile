pipeline {
    agent master

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
    }
}
