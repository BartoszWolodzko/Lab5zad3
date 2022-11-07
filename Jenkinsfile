pipeline {
    agent {
        docker {
            image 'maven:3.6.3-jdk-11'
            args '-u root:root'
            args '-v /var/run/docker.sock:/var/run/docker.sock'
            args '-w /app'
        }
    }
    options {
        skipStagesAfterUnstable()
    }
    stages {
        stage('Test') {
            steps {
                echo 'Testing'
                sh 'mvn test'
            }
        }
        stage('Build') {
            steps {
                echo 'Building'
                mvn 'build'
            }
        }

        stage('Deploy to Staging') {
            steps {
                echo 'Deploying to Staging'

            }
        }
        stage('Deploy to Production') {
            steps {
                echo 'Deploying to Production'
            }
        }
    }
}