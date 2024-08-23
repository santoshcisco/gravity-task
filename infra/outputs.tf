output "instance_public_ip" {
  description = "The public IP of the web server instance"
  value       = aws_instance.web_server.public_ip
}

output "vpc_id" {
  description = "The ID of the VPC"
  value       = aws_vpc.main.id
}
