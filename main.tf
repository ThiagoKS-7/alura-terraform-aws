terraform {
    required_providers {
        aws = {
            source = "hashicorp/aws"
            version = "~> 3.27"
        }
    }
    required_version = ">= 0.14.9"
}

provider "aws" {
  profile = "default"
  region = "sa-east-1"
}

resource "aws_instance" "app_server" {
    ami =           "ami-0af6e9042ea5a4e3e"
    instance_type=  "t2.micro"
    key_name = "iac-alura"
    user_data = <<-EOF
                   #!/bin/bash 
                   cd
                   echo "<h1> Hello World com Terraform </h1>" > index.html
                   nohup busybox httpd -f -p 8080 &
                   EOF
    tags = {
        Name = "ec2_terraform_AWS"
    }
}