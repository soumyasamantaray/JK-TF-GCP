pipeline{
    agent any
<<<<<<< HEAD
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
=======

    parameters {
        booleanParam(name: 'autoApprove', defaultValue: false, description: 'Automatically run apply after generating plan?')
        choice(name: 'action', choices: ['apply', 'destroy'], description: 'Select the action to perform')
    }

    environment {
      CLOUDSDK_CORE_PROJECT='terraform-p-382808'
      withCredentials([file(credentialsId: 'gcloud-cred', variable: 'GCLOUD_CRED')]) {

    }

    stages {
        stage('Checkout') {
            steps {
                git branch: 'master', url: 'https://github.com/soumyasamantaray/JK-TF-GCP.git'
            }
        }
        stage('Terraform init') {
            steps {
                sh 'terraform init'
            }
        }
        stage('Plan') {
            steps {
                sh 'terraform plan -out tfplan'
                sh 'terraform show -no-color tfplan > tfplan.txt'
>>>>>>> 8d8ec9250fa6b9040c968e8c90eb14162dbb566d
            }
        }
        stage('Apply / Destroy') {
            steps {
                script {
                    if (params.action == 'apply') {
                        if (!params.autoApprove) {
                            def plan = readFile 'tfplan.txt'
                            input message: "Do you want to apply the plan?",
                            parameters: [text(name: 'Plan', description: 'Please review the plan', defaultValue: plan)]
                        }

                        sh 'terraform ${action} -input=false tfplan'
                    } else if (params.action == 'destroy') {
                        sh 'terraform ${action} --auto-approve'
                    } else {
                        error "Invalid action selected. Please choose either 'apply' or 'destroy'."
                    }
                }
            }
        }

    }
<<<<<<< HEAD
}
=======
}

}
>>>>>>> 8d8ec9250fa6b9040c968e8c90eb14162dbb566d
