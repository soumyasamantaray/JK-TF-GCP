pipeline {

    agent any



    stages {

 
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