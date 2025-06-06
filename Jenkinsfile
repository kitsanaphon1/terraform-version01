pipeline {
  agent any

  environment {
    TERRAFORM_HOST = "20.198.249.21"
    TERRAFORM_USER = "sooya"
    TF_DIR         = "/home/sooya/terraform"
  }

  stages {
    stage('🚀 Terraform Apply on Remote VM') {
      steps {
        sshagent(credentials: ['ssh-terraform-agent']) {
          sh """
            ssh -o StrictHostKeyChecking=no ${TERRAFORM_USER}@${TERRAFORM_HOST} '
              cd ${TF_DIR} &&
              terraform init &&
              terraform apply -var-file=terraform.tfvars -auto-approve
            '
          """
        }
      }
    }

    stage('🌐 Get VM Public IP') {
      steps {
        sshagent(credentials: ['ssh-terraform-agent']) {
          script {
            def ip = sh(
              script: """
                ssh -o StrictHostKeyChecking=no ${TERRAFORM_USER}@${TERRAFORM_HOST} '
                  cd ${TF_DIR} &&
                  terraform output -raw vm_public_ip
                '
              """,
              returnStdout: true
            ).trim()
            echo "✅ Public IP จาก Terraform: ${ip}"
            writeFile file: 'vm_ip.txt', text: ip
          }
        }
      }
    }
  }
}
