//TERRAFORM

terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "6.12.0"
    }
  }
}


//PROVIDER

provider "aws" {
  region = "us-east-1"
}




//RESOURCES
resource "aws_instance" "app_nginx"{
    ami = 
    instance_type
}

//OUTPUT
output "name" {
  value = aws_instance
}