pipeline {
    agent {
        docker {
            image 'maven:3.9.0-eclipse-temurin-8-alpine'
        }
    }
    stages {
        stage('version') {
            steps {
                sh 'mvn --version'
            }
        }        
        stage('Build') {
            steps {
                sh 'mvn -B -DskipTests clean package'
            }
        }
        stage('Test') {
            steps {
                sh 'mvn test'
            }
            post {
                always {
                    junit 'target/surefire-reports/*.xml'
                }
            }
        }
    }
}

