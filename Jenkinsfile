pipeline {
   agent any 
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
        stage('Docker-Build') {
            steps {
                sh 'docker build -t demo-maven:v0.1'
            }
        }        
    }
}


