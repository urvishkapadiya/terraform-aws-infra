# Terraform AWS VPC with Public and Private Subnets

This project provisions an AWS Virtual Private Cloud (VPC) and AWS EC2 using **Terraform**, including **3 public subnets, 3 private subnets, an Internet Gateway, NAT Gateways, and route tables** across multiple Availability Zones. It also demonstrates modular Terraform structure for scalability and reusability.


## Features
- Custom VPC with configurable CIDR range.
- 3 **Public Subnets** across different AZs.
- 3 **Private Subnets** across different AZs.
- **Internet Gateway (IGW)** for public subnets.
- **NAT Gateway per AZ** for private subnet internet access.
- **route table associations**.
- **Secuity Group**
- **AWS EC2** instance in public subnet 

## Project Strcture
```
├── main.tf
├── variables.tf
├── outputs.tf
├── provider.tf
├── modules/
│   ├── vpc/
│   │   ├── main.tf
│   │   ├── variables.tf
│   │   └── outputs.tf
│   ├── [other-resource-module]/ ...
```

## Prerequisites

- [Terraform](https://developer.hashicorp.com/terraform/downloads) >= 1.3
- AWS CLI configured with credentials (`aws configure`)

## Usage
#### 1. Clone the Repository
```bash
git clone https://github.com/urvishkapadiya/terraform-aws-infra.git
cd terraform-aws-infra
```
#### 2. Initialize Terraform
```bash
terraform init
```
#### 3. Validate Configuration
```bash
terraform validate
```

#### 4. Preview the Infrastructure
```bash
terraform plan
```

#### 5. Apply Changes
```bash
terraform apply -auto-approve
```

#### 6. Destroy Infrastructure
To tear down everything created:
```bash
terraform destroy -auto-approve
```

## Customization
Update `variables.tf` to customize:
- `vpc_cidr` – CIDR block of the VPC
- `public_subnet_cidrs` – List of public subnet CIDRs
- `private_subnet_cidrs` – List of private subnet CIDRs
- `instance_type` – EC2 instance type
- `region` – AWS region

