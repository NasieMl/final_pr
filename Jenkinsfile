pipeline {
    agent any

    stages {
        stage('Terraform Init') {
            steps {
                bat 'terraform init'
            }
        }

        stage('Create VPC') {
            steps {
                bat 'terraform apply -target=google_compute_network.vpc_network -auto-approve'
            }
        }

        stage('Create VM') {
            steps {
                bat 'terraform apply -auto-approve'
            }
        }
    }
}
