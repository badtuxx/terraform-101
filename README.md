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

### Objectivos

- [ ] Apresentar o Terraform
- [ ] Apresentar o OpenTofu
- [ ] Criar um ambiente de infraestrutura na AWS (VPC, Subnets, Security Groups, Internet Gateway, Route Table, NAT Gateway, EC2)
- [ ] Comparar Terraform e OpenTofu
- [ ] Conclusão
- [ ] Perguntas e respostas
- [ ] Sorteio
- [ ] Encerramento
- [ ] Agradecimentos
- [ ] Próximos passos
- [ ] Links úteis

### Estrutura do repositório

Para criar a estrutura do repositório, execute os comandos abaixo:

```bash
mkdir terraform-101
cd terraform-101
touch README.md
```

### Criando a estrutura do Terraform

Para criar a estrutura do Terraform, execute os comandos abaixo:

```bash
mkdir -p terraform/{main,modules}
touch terraform/main/{main.tf,variables.tf,outputs.tf}
touch terraform/main/modules/{vpc,subnet,security_group,internet_gateway,route_table,nat_gateway,ec2}.tf
```

### Criando a estrutura do OpenTofu

Para criar a estrutura do OpenTofu, execute os comandos abaixo:

```bash
mkdir -p opentofu/{main,modules}
touch opentofu/main/{main.tf,variables.tf,outputs.tf}
touch opentofu/main/modules/{vpc,subnet,security_group,internet_gateway,route_table,nat_gateway,ec2}.tf
```

