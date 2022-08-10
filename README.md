## Antes de inicia o projeto com o init
- Sera necessario iniciar um Repo ECR na aws 
- Ter uma imagem docker, segue um projeto com passo a passo de uma imagem Django propria para utilizar aqui: 
  - https://github.com/matheuskassagas/iac-docker-elastic-beanstalk-AWS

```
cd env/prod
terraform init
terraform plan
terraform apply
```
---
- Subir imagem do docker no ecr
- Substitua: 
  - region -> regiao aws
  - aws_account_id -> id aws
```
aws ecr get-login-password --region region | docker login --username AWS --password-stdin aws_account_id.dkr.ecr.region.amazonaws.com
```
- Substitua: 
  - docker_image_id -> id da imagem
  - region -> regiao aws
  - aws_account_id -> id aws
  - my-repository:tag -> nome do ecr 
```
docker tag docker_image_id aws_account_id.dkr.ecr.region.amazonaws.com/my-repository:tag
docker push aws_account_id.dkr.ecr.region.amazonaws.com/my-repository:tag
```
- Insira o nome da imagem em /infra/ecs.tf linha 30.

- use o output para acessar a aplicacao na porta 8000
---
