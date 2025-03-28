pipeline {
    agent any
     parameters {
        booleanParam(name: 'autoApprove', defaultValue: false, description: 'Automatically run apply after generating plan?')
    } 
    environment {
        AWS_ACCESS_KEY_ID     = credentials('AWS_ACCESS_KEY_ID')
        AWS_SECRET_ACCESS_KEY = credentials('AWS_SECRET_ACCESS_KEY')
        AWS_DEFAULT_REGION    = 'ap-south-1'  // Change this to your AWS region
    }
    stages {
        stage('Checkout') {
            steps {
                git branch: 'main',
                    url: 'https://github.com/Anuragsaroj/terraform-jenkins-ec2.git'
            }
        }
        stage('init'){
            steps{
                sh 'terraform init'
            }
        }
        stage('planing'){
            steps{
                sh 'terraform plan'
            }
        }
        stage('apply'){
            steps{
                sh 'terraform apply -auto-approve'
            }
        }
    }
}

