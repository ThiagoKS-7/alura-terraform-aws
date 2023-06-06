<p align="center">
  <a href="" rel="noopener">
 <img width=400px height=200px src="https://github.com/ThiagoKS-7/alura-terraform-aws/assets/83460816/229c647a-2dd2-4939-ac84-375bfb052882" alt="Project logo"></a>
</p>

<h3 align="center">Terrafrom & Ansible on AWS - Alura Iac</h3>

<div align="center">

[![Status](https://img.shields.io/badge/status-active-success.svg)]()
[![GitHub Issues](https://img.shields.io/github/issues/kylelobo/The-Documentation-Compendium.svg)](https://github.com/ThiagoKS-7/alura-terraform-aws/issues)
[![GitHub Pull Requests](https://img.shields.io/github/issues-pr/kylelobo/The-Documentation-Compendium.svg)](https://github.com/ThiagoKS-7/alura-terraform-aws/pulls)
[![License](https://img.shields.io/badge/license-GPL-3.0-blue.svg)](/LICENSE)

</div>


<p align="center"> Few lines describing your project.
    <br> 
</p>

## 📝 Table of Contents

- [About](#about)
- [Getting Started](#getting_started)
- [Usage](#usage)
- [Authors](#authors)

## 🧐 About <a name = "about"></a>

Terraform & Ansible - Alura's IAC project

## 🏁 Getting Started <a name = "getting_started"></a>

These instructions will get you a copy of the project up and running on your local machine for development and testing purposes. See [deployment](#deployment) for notes on how to deploy the project on a live system.

### Prerequisites

- Terraform
- Ansible
- AWS CLI


### Installing

```bash
terraform init
```

edite a permissão dos arquivos .sh:
```bash
sudo chmod u=rwx,g=rx,o=rx ./scripts/*.sh
```

- Copie o arquivo 'hosts_example.yml', renomeando a cópia para 'hosts.yml'
```bash
cp ./hosts_example.yml ./hosts.yml
```
- Coloque o ipv4 público da sua instancia ec2 no arquivo hosts.yml

## 🎈 Usage <a name="usage"></a>

- Plajamento terraform:
```bash
./scripts/terrafrom-plan.sh
```

- Construção da infra com Terraform:
```bash
./scripts/terrafrom-apply.sh
```

- Execute o script do playbook ansible a partir da pasta raíz:
```bash
./scripts/ansible-start.sh
```

### Mostrar infos do grupo de segurança
```bash
./scripts/show-sgs.sh
```

### Remover um grupo de segurança
```bash
./scripts/remove-sgs.sh -n nome_do_sg
```

## ✍️ Authors <a name = "authors"></a>

- [@ThiagoKS-7](https://github.com/ThiagoKS-7) - Initial work







