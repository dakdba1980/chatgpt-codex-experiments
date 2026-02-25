variable "aws_region" {
  description = "AWS region to deploy into"
  type        = string
  default     = "us-east-1"
}

variable "instance_type" {
  description = "EC2 instance type"
  type        = string
  default     = "t3.micro"
}

variable "key_name" {
  description = "Name for the SSH key pair in AWS"
  type        = string
  default     = "terraform-deployer"
}

variable "public_key_path" {
  description = "Local path to the public SSH key to upload"
  type        = string
  default     = "~/.ssh/id_rsa.pub"
}

variable "ssh_cidr" {
  description = "CIDR range allowed to SSH to the instance"
  type        = string
  default     = "0.0.0.0/0"
}
