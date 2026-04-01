pipeline {
    agent any

    stages {
        stage('Terraform Init') {
            steps {
                sh 'terraform init'
            }
        }

        stage('Create VPC') {
            steps {
                sh 'terraform apply -target=google_compute_network.vpc_network -auto-approve'
            }
        }

        stage('Create VM') {
            steps {
                sh 'terraform apply -auto-approve'
            }
        }
    }
}
