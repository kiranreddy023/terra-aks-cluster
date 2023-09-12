pipeline{
    agent any
    tools{
        terraform 'terraform'
    }
    stages{
        stage('TF Init') {
            steps {
                script {
                    def azureCreds = credentials('k8sid')

                    withAzureTerraform(credentialsId: azureCreds.id, subscriptionId: azureCreds.subscriptionId) {
                        sh 'terraform init'
                    }
                }
            }
        }
      
    }
}