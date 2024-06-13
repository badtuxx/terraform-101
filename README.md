# terraform-101

## Live sobre o Terraform e OpenTofu - 101
Esse conteúdo tem como objetivo apresentar o Terraform e OpenTofu de forma prática e objetiva, fazendo com que você possa evoluir seus conhecimentos em infraestrutura como código.

A live foi realizada no dia 19/05/2024 com o Jeferson e o Gomex, ao vivo, mas você pode assistir a gravação no [YouTube](https://www.youtube.com/watch?v=HSaaD2wpgTk).

### Pré-requisitos

- [Terraform](https://www.terraform.io/downloads.html)
- [OpenTofu](https://opentofu.org/docs/intro/install/)
- [AWS CLI](https://docs.aws.amazon.com/cli/latest/userguide/install-cliv2.html)
- [AWS CLI - Configuração](https://docs.aws.amazon.com/cli/latest/userguide/cli-configure-quickstart.html)
- [AWS CLI - Configuração de credenciais](https://docs.aws.amazon.com/cli/latest/userguide/cli-configure-files.html)
- [AWS CLI - Configuração de credenciais - Perfil](https://docs.aws.amazon.com/cli/latest/userguide/cli-configure-profiles.html)
- [Localstack (Opcional)](https://docs.localstack.cloud/getting-started/installation/)

### Usando com Localstack

Copie os arquivos na pasta **localstack** para o diretório **.aws** dentro do diretório do usuário (/home/nome_usuario ou ~/).

```bash
mkdir ~/.aws && cp ./localstack/* ~/.aws/
```

> Nunca guarde os dados de acesso dentro do repositório, esta é a forma apenas para uso local.

Inicie o localstack

```bash
localstack start
```

Inicie o repositório Terraform

```bash
terraform init
```

### Comandos

#### Configuração AWS CLI
Adicione suas credenciais da AWS

```bash
aws configure
```
#### Deploy com Terraform

```bash
git clone REPONAME
cd REPONAME
cd terraform/main
terraform init
terraform plan
terraform apply
```

#### Deploy com OpenTofu

```bash
git clone REPONAME
cd REPONAME
cd terraform/main
tofu init
tofu plan
tofu apply
```

### Links úteis

 - [Treinamento Descomplicando o Terraform - Intensivo 2024](https://www.linuxtips.io/treinamento-terraform-2024)
 - [Terraform](https://www.terraform.io/)
 - [OpenTofu](https://opentofu.org/)
