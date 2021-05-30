 pipeline{
    agent any
    tools {
        terraform 'terraform-11'
    }
    stages{
        stage('init')
           steps{
            sh 'terraform init'
           }
    }
 }