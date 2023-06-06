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
  profile  =   var.provider_info["profile"]
  region   =   var.provider_info["region"]
}

resource "aws_security_group" "iac_alura" {
    tags = {
        Name = var.sg_name
    }
}

resource "aws_instance" "app_server" {
    ami             =     var.instance_info["ami"]
    instance_type   =     var.instance_info["type"]
    key_name        =     var.instance_info["key"]
    # user_data = <<-EOF
    #                #!/bin/bash 
    #                cd
    #                echo "<h1> Hello World com Terraform </h1>" > index.html
    #                nohup busybox httpd -f -p 8080 &
    #                EOF
    tags = {
        Name = var.instance_info["name"]
    }
}