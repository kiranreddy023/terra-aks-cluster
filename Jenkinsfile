pipeline{
    agent any
    stages{
        stage("tf init"){
            steps {
               sh 'terraform init'
            }
        }
        stage("tf apply"){
            steps {
               sh 'terraform apply -auto-approve'
            }
        }
    }
}