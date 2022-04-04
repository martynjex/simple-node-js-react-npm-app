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
                sh '/usr/bin/make build' 
            }
        }
        stage('Test') {
            steps {
                sh '/usr/bin/make test'
            }
        }
        stage('Deliver') {
            steps {
                sh '/usr/bin/make deliver'
            }
        }
    }
}