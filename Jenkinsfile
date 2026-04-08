pipeline {
    agent any
    stages {
        stage('Terraform Init') {
            steps {
                sh 'cd /home/anastasia/final_pr && terraform init'
            }
        }
        stage('Create Infrastructure') {
            steps {
                sh 'cd /home/anastasia/final_pr && terraform apply -auto-approve'
            }
        }
    }
}
