pipeline {
    agent any
    stages {
        stage('checkout') {
            steps {
                git branch: 'master', url: 'https://github.com/morgom94/TerraformCloud'
                //echo 'Terraform variables'
            }
        }
    stage('Set Terraform path') {
        steps {
            script {
                def tfHome = tool name: 'Terraform'
                env.PATH = "${tfHome}:${env.PATH}"
            }
            echo '\nPrinting Terraform version'
            bat 'terraform --version'
        }
    }
    stage('TERRAFORM INIT') {
        steps {
            //dir('dev')
            //{
                echo '\n\nInitializing... \nLooking for *.tf files'
                bat 'terraform init'
                //bat 'terraform plan -out=plan'
                //bat 'terraform apply -var region=us-east-2'
            //}
        }
    }
    stage('TERRAFORM APPLY'){
        steps {
             bat 'terraform apply'
        }
    }
 }
}
