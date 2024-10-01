# Infra-Terraform
Estrutura de infra 


para cadastrar a access key, secret key e region
rodar o aws configure

configurar o kubectl

aws eks --region us-east-1 update-kubeconfig --name eks-cluster


Para subir a imagem no ecr

#Criar tag
docker tag soat7-lanchonete:1.0.1 {ID_ACCOUNT}.dkr.ecr.us-east-1.amazonaws.com/soat7-lanchonete:1.0.1

#Efetuar login
aws ecr get-login-password --region us-east-1 | docker login --username AWS --password-stdin {ID_ACCOUNT}.dkr.ecr.us-east-1.amazonaws.com

#Criar repo no ECR
aws ecr create-repository --repository-name soat7-lanchonete --region us-east-1                           

#realizar push da imagem

docker push 737021845667.dkr.ecr.us-east-1.amazonaws.com/soat7-lanchonete:1.0.1








