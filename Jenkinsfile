pipeline {
  agent any
  stages {
    stage('build') {
      steps {
        sh 'docker build . -t lcherubin/tp-devop-ifriuac:latest && docker push lcherubin/tp-devop-ifriuac'
      }
    }

    stage('deploy') {
      steps {
        sh 'minikube kubectl -- apply -f k8s.yaml'
      }
    }

  }
}