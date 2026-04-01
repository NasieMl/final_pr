pipeline {
    agent any

    stages {
        stage('Terraform Init') {
            steps {
                bat 'ssh -o StrictHostKeyChecking=no -p 2222 anastasia@127.0.0.1 "cd ~/final_pr && terraform init"'
            }
        }

        stage('Stage 1: Create VPC') {
            steps {
                bat 'ssh -o StrictHostKeyChecking=no -p 2222 anastasia@127.0.0.1 "cd ~/final_pr && terraform apply -target=google_compute_network.vpc_network -auto-approve"'
            }
        }

        stage('Stage 2: Create VM') {
            steps {
                bat 'ssh -o StrictHostKeyChecking=no -p 2222 anastasia@127.0.0.1 "cd ~/final_pr && terraform apply -auto-approve"'
            }
        }
    }
}
