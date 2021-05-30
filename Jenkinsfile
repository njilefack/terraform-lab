pipeline {   
  agent any
  stages {
    stage('init') {
      steps {
        sh 'terraform init'
      }
    }
    stage('plan') {
      steps {
        sh 'terraform plan'
      }
/*
    }
    stage('approval') {
      options {
        timeout(time: 1, unit: 'HOURS') 
      }
      steps {
        input 'approve the plan to proceed and apply'
      }
    }
    stage('apply') {
      steps {
        sh 'docker run -w /app -v /root/.aws:/root/.aws -v `pwd`:/app hashicorp/terraform:light apply -auto-approve'
        cleanWs()
      }
    }
  }
}
*/