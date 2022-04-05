pipeline {
    agent {
        {
            any {
                image 'node:12.16.2' args '-p 3000:3000'
            }
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