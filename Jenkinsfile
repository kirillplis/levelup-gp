pipeline {
    environment {
        registry = "chelbsik/vkr"
        registryCredential = 'dockerhub'
    }
    agent any
    stages {
        stage('Cloning Git') {
            steps {
                git 'https://github.com/Chelbsik/vkr.git'
            }
        }
        stage('Building image') {
            steps{
                script {
                    docker.build registry + ":$BUILD_NUMBER"
                }
            }
        }
        stage('Deploy Image') {
            steps{
                script {
                    docker.withRegistry( '', registryCredential ) {
                    dockerImage.push()
                    }
                }
            }
        }
        stage('Deploy application') {
            steps{
                sh "kubectl apply -f kuber_vkr.yml"
            }
        }
    }
}
