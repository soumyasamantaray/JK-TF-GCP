pipeline {

    agent any



    stages {

        stage('Checkout') {

            steps {

                git branch: 'master', url: 'https://github.com/soumyasamantaray/JK-TF-GCP'

            }

        }

        stage('Terraform init') {

            steps {

                sh 'terraform init'

            }

        }

        stage('Terraform apply') {

            steps {

                sh 'terraform apply --auto-approve'

            }

        }

        

    }

}