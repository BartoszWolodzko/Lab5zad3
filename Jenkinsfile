//run maven test in docker if pass deploy
node {
    stage('Build') {
        docker.image('maven:3.5.2-jdk-8-alpine').inside {
            sh 'cd demo'
            sh 'ls'
            sh 'mvn test'
        }
    }
    stage('Deploy') {
        input 'Deploy?'
        docker.image('maven:3.5.2-jdk-8-alpine').inside {
            sh 'mvn deploy'
        }
    }
}
/*


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
}*/