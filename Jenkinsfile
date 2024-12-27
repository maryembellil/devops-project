pipeline {
    agent any

    stages {
        stage('Checkout') {
            steps {
                git branch: 'main', url: 'https://github.com/maryembellil/devops-project.git' 
            }
        }
        stage('Build') {
            steps {
                bat 'npm install' 
            }
        }
        stage('Test') {
            steps {
                bat 'npm test' 
            }
        }
        stage('Docker Build') {
            steps {
                bat 'docker build -t to-do-app:latest .' 
            }
        }
        stage('Docker Run') { 
            steps {
                bat 'docker run -d -p 5000:5000 to-do-app:latest' 
            }
        }
    }
}