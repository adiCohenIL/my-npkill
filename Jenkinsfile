pipeline {
    environment {
	    registry = "adicohenIL/npkill-image"
    }
    agent {
        docker {
            image 'node:10-alpine' 
            args '-p 3000:3000' 
        }
    }
    stages {
        stage('Build') {
            steps {
                sh 'npm install'
            }
        }
        stage('test') {
            steps {
                sh 'npm test'
            }
        }
        stage('Dockerize') {
            steps {
        	script {
                   docker.build registry + ":$BUILD_NUMBER"
		}
            }
        }
    }
}
