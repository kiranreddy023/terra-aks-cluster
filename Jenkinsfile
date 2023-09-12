pipeline{
    agent any
    tools{
        terraform 'terraform'
    }
    stages{
        stage('TF Init') {
            steps {
                sh 'terraform init'
            }
        }
        stage('TF apply') {
            steps {
                sh 'terraform apply --auto-approve'
            }
        }
    }
}