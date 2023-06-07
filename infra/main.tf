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

resource "aws_instance" "app_server" {
    ami             =     var.instance_info["ami"]
    instance_type   =     var.instance_info["type"]
    key_name        =     var.instance_info["key"]
    security_groups =     [aws_security_group.iac_alura.name]
    tags = {
        Name = var.instance_info["name"]
    }
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

resource "aws_key_pair" "chaveSSH" {
    key_name = var.instance_info["key"]
    public_key = file("${var.instance_info["key"]}.pub")
}

output "public_ip" {
    value = aws_instance.app_server.public_ip
}