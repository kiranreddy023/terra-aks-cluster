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
      
    }
}