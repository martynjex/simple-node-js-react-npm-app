pipeline {
    agent {
        docker {
            image 'node:lts-bullseye-slim' 
            args '-p 3000:3000' 
        }
    }
    stages {
        stage('Build') { 
            steps {
                sh 'make build' 
            }
        }
        stage('Test') {
            steps {
                sh 'make test'
            }
        }
        stage('Deliver') {
            steps {
                sh 'make deliver'
            }
        }
    }
}