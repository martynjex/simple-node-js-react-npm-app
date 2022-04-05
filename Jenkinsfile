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
                withEnv(["PATH=/usr/bin:$PATH"]) {
                    sh 'make build' 
                }
            }
        }
        stage('Test') {
            steps {
                withEnv(["PATH=/usr/bin:$PATH"]) {
                    sh 'make test' 
                }            }
        }
        stage('Deliver') {
            steps {
                withEnv(["PATH=/usr/bin:$PATH"]) {
                    sh 'make deliver' 
                }            }
        }
    }
}