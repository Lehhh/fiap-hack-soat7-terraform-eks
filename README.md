# Infra-Terraform
Estrutura de infra 


para cadastrar a access key, secret key e region
rodar o aws configure

configurar o kubectl

aws eks --region us-east-1 update-kubeconfig --name eks-cluster


necessário dar permissionamento dentro do cluster do eks


criar a role
aws iam create-role --role-name eks-access-role --assume-role-policy-document file://./.aws/eks-access-trust-policy.json

associar permissoes de cluster a role

aws iam attach-role-policy --role-name eks-access-role --policy-arn arn:aws:iam::aws:policy/AmazonEKSClusterPolicy

associar servicos do eks a role

aws iam attach-role-policy --role-name eks-access-role --policy-arn arn:aws:iam::aws:policy/AmazonEKSServicePolicy

