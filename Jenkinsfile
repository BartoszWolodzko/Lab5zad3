pipeline {
    agent any
    options {
        skipStagesAfterUnstable()
    }
    stages {
        stage('Test') {
            steps {
                echo 'Testing'
                docker build -dockerfile Dockerfile-test -t test .
                docker run test
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