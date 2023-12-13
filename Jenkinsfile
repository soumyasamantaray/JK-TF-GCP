pipeline {
    agent any
    
    environment {
        CLOUDSDK_CORE_PROJECT='terraform-p-382808'
    }
    stages{
        stage('test') {
          steps {
            withCredentials([file(credentialsId: 'gcloud-cred', variable: 'GCLOUD_CRED')]) {
               sh'''#!/bin/bash
                 gcloud version          
                '''
              }
        }
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
                sh 'terraform apply -auto-approve'
            }
        }
    }

