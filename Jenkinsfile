pipeline {
    agent any
    tools {
        nodejs "NodeJS"
    }
    stages {
        stage('Source') {
            steps {
                git 'https://github.com/shubhampanchall/estore-admin-dashboard.git'
                sh "npm install"
                echo 'Source Stage Finished'
            }
        }
        stage('Test') {
            steps {
                sh "npm run cypress:run"
                echo 'Test Stage Finished'
            }
        }
        stage('Build') {
            steps {
                sh "npm run ng build"
                echo 'Build Stage Finished'
            }
        }
    }
}
