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
    name            =     var.sg_name
    description     =     "Allow all traffic"
    ingress {
        from_port       = 0
        to_port         = 0
        protocol        = "-1"
        cidr_blocks     = ["0.0.0.0/0"]
    }
    egress {
        from_port       = 0
        to_port         = 0
        protocol        = "-1"
        cidr_blocks     = ["0.0.0.0/0"]
    }
    tags = {
        Name = "terraform-ansible-alura-iac"
    }
}

resource "aws_instance" "app_server" {
    ami             =     var.instance_info["ami"]
    instance_type   =     var.instance_info["type"]
    key_name        =     var.instance_info["key"]
    security_groups =     [aws_security_group.iac_alura.name]
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

resource "aws_key_pair" "chaveSSH" {
    key_name = var.instance_info["key"]
    public_key = file("${var.instance_info["key"]}.pub")
}