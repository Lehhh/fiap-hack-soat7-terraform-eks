variable "region" {
  default = "us-east-1"
}

variable "cluster_name" {
  default = "eks-cluster"
}

variable "node_instance_type" {
  default = "t3.small"
}

variable "desired_capacity" {
  default = 2
}

variable "max_size" {
  default = 3
}

variable "min_size" {
  default = 2
}

variable "vpc_cidr" {
  default = "10.0.0.0/16"
}

variable "public_subnets" {
  type    = list(string)
  default = ["10.0.1.0/24", "10.0.2.0/24"]  # Duas zonas de disponibilidade
}

variable "private_subnets" {
  type    = list(string)
  default = ["10.0.3.0/24", "10.0.4.0/24"]  # Duas zonas de disponibilidade
}

variable "availability_zones" {
  default = ["us-east-1a", "us-east-1b"]
}
variable "ami_type" {
  type = string
  default = "AL2023_x86_64_STANDARD"
}

variable "vpc_name" {
  type = string
  default = "VPC-EKS"
}