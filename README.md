# Estudos de Terraform para IaC na AWS

Este repositório é dedicado a estudos e exemplos práticos de como utilizar o Terraform para implementar infraestrutura como código (IaC) na Cloud AWS. Aqui, você encontrará exemplos básicos e avançados, cobrindo desde a configuração de recursos simples, como instâncias EC2, até arquiteturas mais complexas, como redes e bancos de dados gerenciados.

## Índice

- [Objetivo](#objetivo)
- [Pré-requisitos](#pré-requisitos)
- [Estrutura do Repositório](#estrutura-do-repositório)
- [Como Utilizar](#como-utilizar)
- [Exemplos Incluídos](#exemplos-incluídos)
- [Boas Práticas](#boas-práticas)
- [Contribuições](#contribuições)
- [Licença](#licença)

## Objetivo

O objetivo deste repositório é fornecer exemplos práticos de como usar o Terraform para provisionar e gerenciar a infraestrutura de forma declarativa na AWS. Isso ajuda a entender melhor como o Terraform interage com serviços da AWS e a adotar uma abordagem de infraestrutura como código (IaC) para automação e versionamento da infraestrutura.

## Pré-requisitos

Antes de iniciar os exemplos neste repositório, certifique-se de que você atendeu aos seguintes pré-requisitos:

- **Conta AWS**: Uma conta AWS válida com permissões para criar e gerenciar recursos.
- **[Terraform](https://www.terraform.io/downloads.html)**: Instalado em sua máquina.
- **[AWS CLI](https://aws.amazon.com/cli/)**: Instalado e configurado com credenciais válidas.
- **Chaves SSH**: Para acessar as instâncias EC2, caso necessário.
- **Editor de código**: Recomendado o uso de editores como Visual Studio Code ou qualquer outro editor com suporte a sintaxe HCL (HashiCorp Configuration Language).

## Estrutura do Repositório

A estrutura do repositório está organizada por exemplos de uso do Terraform para diferentes serviços da AWS. Cada exemplo contém um diretório com os arquivos `.tf` necessários para provisionar os recursos descritos.

├── ec2-instance │ ├── main.tf │ ├── variables.tf │ ├── outputs.tf │ └── README.md ├── vpc-network │ ├── main.tf │ ├── variables.tf │ └── outputs.tf ├── s3-bucket │ ├── main.tf │ └── README.md ├── rds-database │ ├── main.tf │ ├── variables.tf │ └── outputs.tf └── README.md


- **ec2-instance/**: Exemplo de provisionamento de uma instância EC2 com Terraform.
- **vpc-network/**: Configuração de uma VPC, sub-redes, gateways e tabelas de roteamento.
- **s3-bucket/**: Criação de um bucket S3 e suas políticas de acesso.
- **rds-database/**: Configuração de uma instância de banco de dados RDS.

## Como Utilizar

1. **Clone o Repositório:**

   ```bash
   git clone https://github.com/seu-usuario/terraform-aws-studies.git
   cd terraform-aws-studies

2. **Inicialize o Terraform:**

    ```bash
    cd ec2-instance
    terraform init

3. **Verifique o Plano de Execução:**

    ```bash
    terraform plan

4. **Aplicar as Configurações:**

    ```bash
    terraform apply

5. **Destruir a Infraestrutura (opcional):**
 
    ```bash
    terraform destroy

## Exemplos Incluídos

Este repositório contém exemplos práticos para os seguintes serviços da AWS:

- **EC2: Criação de instâncias EC2 com chave SSH, grupos de segurança e tags.**
- **VPC: Provisionamento de redes privadas e públicas, sub-redes, tabelas de roteamento e gateways NAT.**
- **S3: Criação de buckets S3 com políticas de acesso e configuração de versionamento.**
- **RDS: Provisionamento de instâncias de banco de dados relacional (RDS) com parâmetros de segurança e backups automáticos.**

## Boas Práticas

Ao trabalhar com Terraform em um ambiente AWS, é recomendado seguir as melhores práticas de infraestrutura como código:

- **Utilizar arquivos de variáveis: Definir variáveis em arquivos variables.tf e valores em arquivos terraform.tfvars para facilitar a reutilização e a manutenção.**
- **Gerenciamento de estado remoto: Usar o armazenamento de estado remoto (por exemplo, S3) para compartilhar o estado do Terraform em equipes e ambientes.**
- **Bloqueio de estado: Habilitar bloqueio de estado com DynamoDB para evitar conflitos em execuções concorrentes.**
- **Módulos: Organizar a infraestrutura em módulos reutilizáveis para reduzir a duplicação de código.**
- **Proteger arquivos sensíveis: Certifique-se de que arquivos sensíveis como terraform.tfstate e chaves privadas SSH sejam incluídos no .gitignore.**

## Contribuições

Se você tiver exemplos adicionais ou melhorias, fique à vontade para abrir uma issue ou enviar um pull request. Colaborações são bem-vindas!

## Licença

- **Objetivo**: Explica a finalidade do repositório e o que os usuários podem aprender com ele.
- **Pré-requisitos**: Lista as ferramentas necessárias para seguir os exemplos.
- **Estrutura do Repositório**: Apresenta como os exemplos estão organizados dentro do repositório.
- **Como Utilizar**: Orienta como inicializar o Terraform, ajustar variáveis, aplicar configurações e destruir recursos.
- **Exemplos Incluídos**: Lista os serviços AWS cobertos pelos exemplos no repositório.
- **Boas Práticas**: Orientações sobre como organizar e proteger o código do Terraform.
- **Contribuições e Licença**: Como contribuir e a licença sob a qual o repositório está publicado.

Este README pode ser personalizado de acordo com o que você está abordando nos estudos de Terraform para a AWS.
