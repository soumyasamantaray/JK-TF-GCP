pipeline{
    agent any
    stages{
        stage('Git checkout'){
            steps{
                git 'https://github.com/soumyasamantaray/JK-TF-GCP'
            }
        }
        stage('Initialize'){
            steps{
                sh 'terraform init'
            }
        }
        stage('Plan'){
            steps{
                sh 'terraform plan'
            }
        }
        stage('Apply'){
            steps{
                sh 'terraform apply --auto-approve'
            }
        }
    }
}