pipeline {
    environment {
        registry = "chelbsik/vkr"
        registryCredential = 'dockerhub'
    }
    agent any
    stages {
        stage('Cloning Git') {
            steps {
                git 'https://github.com/Chelbsik/levelup-vkr.git'
            }
        }
        stage('Building image') {
            steps{
                script {
                    dockerImage = docker.build registry + ":$BUILD_NUMBER"
            }   
       }
   }
        stage('Deploy application') {
            steps{
                sh "kubectl delete deploy vkr"
                sh "kubectl apply -f vkr-cluster.yml"
            }
        }
    }
}
