module "aws_dev" {
    source = "../../infra"
    sg_name = "iac_alura"
    provider_info = {
        "region"    =     "sa-east-1"
        "profile"   =     "default"
    }
    instance_info = {
        "name"  =    "terraform_ansible_python"
        "key"   =    "iac-dev" # Key para SSH (gerada dentro da pasta env - usar nome da .pub de Dev ou Prod)
        "type"  =    "t2.micro"
        "ami"   =    "ami-0af6e9042ea5a4e3e"
    }
}

output "dev_ip" {
    value = module.aws_dev.public_ip
}