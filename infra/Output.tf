output "vpc_id" {
  description = "ID da VPC"
  value       = module.vpc.vpc_id
}

output "public_subnets" {
  description = "Sub-redes públicas"
  value       = module.vpc.public_subnets
}

output "private_subnets" {
  description = "Sub-redes privadas"
  value       = module.vpc.private_subnets
}


# Saída para visualizar a URL do EKS
output "eks_cluster_endpoint" {
  description = "EKS cluster endpoint"
  value       = module.eks.cluster_endpoint
}

output "eks_cluster_name" {
  description = "Nome do cluster EKS"
  value       = module.eks.cluster_id
}