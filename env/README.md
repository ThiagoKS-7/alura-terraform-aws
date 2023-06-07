## Gere aqui sua key-pair

Dentro de uma das pastas, rode o seguinte comando
```bash
ssh-keygen
```
- Siga as instruções, nomeando  o arquivo como desejar e colocando sua senha

- IMPORTANTE:  Acrescente esse nome dentro do .gitignore, para ele não ser versionado

- IMPORTANTE: Não esqueça de mudar o nome da chave dentro do terraform.tfvars dentro da pasta infra, no objeto instance_info