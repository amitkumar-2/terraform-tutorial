pipeline {
    agent any
    environment {
        AWS_ACCESS_KEY_ID = credentials('sam-jenkins-demo-credentials')
        AWS_SECRET_ACCESS_KEY = credentials('sam-jenkins-demo-credentials')
    }
    stages {
        stage("Install Terraform") {
            steps {
                sh """
                    echo "Checking if Terraform is installed..."
                    if ! command -v terraform &> /dev/null
                    then
                        curl -fsSL https://apt.releases.hashicorp.com/gpg | sudo apt-key add -
                        sudo apt-add-repository 'deb [arch=amd64] https://apt.releases.hashicorp.com \$(lsb_release -cs) main'
                        sudo apt-get update && sudo apt-get install terraform
                    fi
                    """ + " || echo 'Terraform installation failed' && exit 1"
            }
        }
        
        stage("Build") {
            steps {
                dir('root') {
                    sh "pwd"
                    sh "terraform init"
                    sh "terraform apply"
                }
            }
        }
    }
}