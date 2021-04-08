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
        stage('Deploy application') {
            steps{
                sh "kubectl apply -f vkr-cluster.yml"
            }
        }
    }
}
