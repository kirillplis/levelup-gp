pipeline {
  environment {
    registry = "chelbsik/hw-14"
    registryCredential = 'dockerhub'
    dockerImage = ''
  }
  agent any
  stages {
    stage('Cloning Git') {
      steps {
        git 'https://github.com/gustavoapolinario/microservices-node-example-todo-frontend.git'
      }
    }
   agent { dockerfile true }
   stages {
        stage('Test') {
            steps {
                sh 'node --version'
                sh 'svn --version'
            }
        }
   }
  }
}
