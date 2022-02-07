pipeline {
  agent any
  stages {
    stage('build') {
      steps {
        sh 'docker build . -t lcherubin/tp-devop-ifriuac:latest'
      }
    }

    stage('deploy') {
      steps {
        sh 'minikube kubectl -- apply -f k8s.yaml'
        sh 'minikube kubectl -- get all'
      }
    }

  }
}