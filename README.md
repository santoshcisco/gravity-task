# Gravity Assignment

# KEY POINTS
============
* We should use Jenkins credentials plugin to store sensitive info like SSH or API keys securely.
* We should use AWS Secrets Manager or Parameter Store for sensitive data within the Terraform configuration.
* We should use an S3 bucket with state locking enabled using DynamoDB.


# Project directory "gravity-task"

# "infra"directory for deploy the resources on AWS CLOUD

# Once spinup the infra then we Trigger the Jenkins-CICD-job using Jenkinfile, once we configured this file on jenkins server. 

# This Jenkinsfile Checkout the source code, Build and Test with Maven. 
  If the Maven test is succesful then only deploy into the EC2 instance.

# Integrated Cloudwatch to Monitor the instance's CPU, Memory, and disk usage.
  If CPU usage exceeds 80%, the alert will notify via email 
