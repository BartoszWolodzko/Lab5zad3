pipeline {
    environment {
        registry = "s23136/lab5zad3"
        DOCKERHUB_CREDENTIALS = credentials('docker-login-pwd')
        HEROKU_API_KEY = credentials('heroku-api-key')
    }
    agent {
        docker {
            image 'maven:3.8.6-amazoncorretto-17'
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
                //mvn 'build'
            }
        }
        stage('Deploy to heroku') {
            steps {
                echo 'Deploying to heroku api key'
                withCredentials([[$class: 'StringBinding', credentialsId: 'heroku-api-key', variable: 'heroku-api-key']]) {
                        mvn "heroku:deploy -DskipTests=true -Dmaven.javadoc.skip=true -B -V -D"
                    }
                //mvn 'heroku:deploy'
                //sh 'mvn deploy'
                //sh 'docker image build -t $registry:$BUILD_NUMBER .'
                //sh 'echo $DOCKERHUB_CREDENTIALS_PSW | docker login -u s23136 --password-stdin'
                //sh 'docker image push $registry:$BUILD_NUMBER'
                //sh "docker image rm $registry:$BUILD_NUMBER"
            }
        }
    }
}