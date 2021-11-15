pipeline {
    agent any
    stages {
            stage('SCM Checkout') {
            steps {
                git branch: "master", url: "https://github.com/learnnew47/springbootapp.git"
            }
          }  
        stage('Build Application') {
            steps {
                sh 'cp /var/lib/jenkins/workspace/Maven project/target/docker-demo.jar .'
            }
          }
        stage('docker image') {
            steps {
                sh "docker build -t  springboot:latest ."
            }
        }
 
    }
}
