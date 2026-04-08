pipeline {
    agent any
    stages {
        stage('Terraform Init') {
            steps {
                sh 'terraform init'
            }
        }
        stage('Create Infrastructure') {
            steps {
                sh 'terraform apply -auto-approve'
            }
        }
    }
}
