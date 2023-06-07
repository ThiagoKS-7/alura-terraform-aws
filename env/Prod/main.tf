module "aws_prod" {
    source = "../../infra"
    sg_name = "iac_alura"
    provider_info = {
        "region"    =     "sa-east-1"
        "profile"   =     "default"
    }
    instance_info = {
        "name"  =    "terraform_ansible_python"
        "key"   =    "iac-prod" # Key para SSH (gerada dentro da pasta env - usar nome da .pub de prod ou Prod)
        "type"  =    "t2.micro"
        "ami"   =    "ami-0af6e9042ea5a4e3e"
    }
}

output "prod_ip" {
    value = module.aws_prod.public_ip
}