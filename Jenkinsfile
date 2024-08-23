pipeline {
    agent any

    environment {
        // We can specify necessary environment variables here
        AWS_REGION = 'us-east-1'
        SSH_PRIVATE_KEY = credentials('gravity-ssh-key') // Store your SSH private key in Jenkins credentials
    }

    stages {
        stage('Checkout') {
            steps {
                // Pull the latest code from Git repository
                git branch: 'main', url: 'https://github.com/gravity-task-repo.git'
            }
        }

        stage('Build') {
            steps {
                // Run the build using application's build tool (e.g., Maven)
                echo "Building the application..."
                sh 'mvn clean compile'
            }
        }

        stage('Test') {
            steps {
                // Run tests
                echo "Running tests..."
                sh 'mvn test'
            }
        }

        stage('Deploy') {
            when {
                expression {
                    // Deploy only if the build and test stages were successful
                    currentBuild.currentResult == 'SUCCESS'
                }
            }
            steps {
                script {
                    // Deploy the application using SSH and SCP to copy files to the EC2 instance
                    sshagent(['gravity-ssh-key']) {
                        // Copy files to EC2 instance
                        sh '''
                        scp -o StrictHostKeyChecking=no -i $SSH_PRIVATE_KEY target/app.war ec2-user@<EC2_PUBLIC_IP>:/var/www/html/
                        '''
                        // SSH into the instance and restart the web server
                        sh '''
                        ssh -o StrictHostKeyChecking=no -i $SSH_PRIVATE_KEY ec2-user@<EC2_PUBLIC_IP> 'sudo systemctl restart nginx'
                        '''
                    }
                }
            }
        }
    }

    post {
        always {
            echo 'Cleaning up temporary files...'
            // Any cleanup steps
        }
        success {
            echo 'Build, test, and deployment successful!'
        }
        failure {
            echo 'Build or test failed! Deployment will not occur.'
        }
    }
}
