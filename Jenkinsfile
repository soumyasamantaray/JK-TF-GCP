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
                 gcloud auth activate-service-account --key-file="${GCLOUD_CRED}"
                 gcloud compute zones list
                 gcloud projects list
                 gcloud compute instances create my-instance2 --zone us-east1-b
                 terraform init
                '''
              }
        }
    }
    
  }
}
