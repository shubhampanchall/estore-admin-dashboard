pipeline {
    agent any
        label 'node'
    }
    stages {
        stage('Source') {
            steps {
                git branch: 'main', url: 'https://github.com/shubhampanchall/estore-admin-dashboard.git'
            }
        }
        stage('Compile') {
            steps {
                sh 'npm install'
            }
        }
        stage('Test') {
            steps {
                sh 'npm run ng test'
            }
        }
        stage('Build') {
            steps {
                sh 'npm run ng build'
            }
        }
    }
    post {
        success {
            // Add steps or notifications for a successful build
        }
        failure {
            // Add steps or notifications for a failed build
        }
    }
}
