# alura-terraform-aws

```bash
terraform init
```

edite a permissão dos arquivos .sh:
```bash
sudo chmod u=rwx,g=rx,o=rx ./scripts/*.sh
```

### Inicie a planejamento e construção da instância 
```bash
terraform plan
```
em seguida:
```bash
terraform apply
```

- Copie o arquivo 'hosts_example.yml', renomeando a cópia para 'hosts.yml'
```bash
cp ./hosts_example.yml ./hosts.yml
```
- Coloque o ipv4 público da sua instancia ec2 no arquivo hosts.yml

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
