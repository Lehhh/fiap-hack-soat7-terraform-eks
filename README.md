# Infra-Terraform

## Overview
This repository contains Terraform configurations for setting up infrastructure on AWS, including an EKS cluster and associated resources.

## Prerequisites
- Terraform >= 0.14.9
- AWS CLI
- kubectl

## Setup

### AWS CLI Configuration
To configure your AWS credentials, run:
```sh
aws configure

```
Provide your AWS Access Key, Secret Key, and default region when prompted.  
Terraform Initialization
Initialize the Terraform configuration:
terraform init

Terraform Plan and Apply
To see the changes Terraform will make, run:

To apply the changes and create the infrastructure, run:

terraform apply

Configure kubectl
To configure kubectl to interact with your EKS cluster, run:

aws eks --region us-east-1 update-kubeconfig --name eks-cluster

Directory Structure
env/prod/Main.tf: Main Terraform configuration for the production environment.
infra/SecurityGroup.tf: Security group configurations.
infra/Variables.tf: Variable definitions for the infrastructure.
Variables
The following variables are defined in infra/Variables.tf:  
region: Default AWS region.
cluster_name: Name of the EKS cluster.
node_instance_type: Instance type for the nodes.
desired_capacity: Desired number of nodes.
max_size: Maximum number of nodes.
min_size: Minimum number of nodes.
vpc_cidr: CIDR block for the VPC.
public_subnets: List of public subnet CIDR blocks.
private_subnets: List of private subnet CIDR blocks.
availability_zones: List of availability zones.
ami_type: AMI type for the nodes.
vpc_name: Name of the VPC.
Security Groups
The following security groups are defined in infra/SecurityGroup.tf:  
aws_security_group.ssh_cluster: Security group for SSH access to the cluster.
aws_security_group_rule.ssh_cluster_in: Ingress rule for SSH access.
aws_security_group_rule.ssh_cluster_out: Egress rule for all traffic