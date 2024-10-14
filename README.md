# Gravity Assignment
# Second one added

# Added extra miles and got passes
# Key Points
============

* Use the Jenkins credentials plugin to store sensitive information, such as SSH keys or API keys, securely.
* Utilize AWS Secrets Manager or Parameter Store to manage sensitive data within the Terraform configuration.
* Store Terraform state in an S3 bucket with state locking enabled using DynamoDB for consistency and safety.

## Project Directory: "gravity-task"

* The `infra` directory contains the Terraform scripts for deploying resources on AWS Cloud.

## Instructions

1. After setting up the infrastructure, trigger the Jenkins CI/CD job using the Jenkinsfile. Ensure the Jenkinsfile is properly configured on the Jenkins server.
2. The Jenkinsfile will:
   * Checkout the source code.
   * Build and test the application using Maven.
   * Deploy to the EC2 instance only if the Maven tests are successful.

## Monitoring and Alerts

* CloudWatch is integrated to monitor the EC2 instance's CPU, memory, and disk usage.
* 
# Added Signing key again
If CPU usage exceeds 80%, an alert will be sent via email to notify the relevant personnel.
