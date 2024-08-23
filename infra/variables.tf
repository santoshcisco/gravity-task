variable "aws_region" {
  description = "The AWS region to deploy Resources"
  type        = string
  default     = "us-east-1"
}

variable "vpc_cidr" {
  description = "The CIDR block for the VPC"
  type        = string
  default     = "10.0.0.0/16"
}

variable "public_subnet_cidr" {
  description = "The CIDR block for the Public subnet"
  type        = string
  default     = "10.0.1.0/24"
}

variable "private_subnet_cidr" {
  description = "The CIDR block for the Private subnet"
  type        = string
  default     = "10.0.2.0/24"
}

variable "instance_type" {
  description = "The type of EC2 instance to use"
  type        = string
  default     = "t2.micro"

}
variable "instance_ami" {
  description = "The AMI ID for EC2 instance"
  type        = string
  default     = "ami-0c94855ba95c71c99"
}

variable "key_name" {
  description = "The name of the SSH key pair"
  type        = string
}

variable "alert_email" {
  description = "The email address to receive CloudWatch Alerts"
  type        = string
}
