variable "aws_region" {
  description = "AWS Region to deploy VPC"
  default     = "us-east-1"
}

variable "vpc_cidr" {
  description = "CIDR block of the vpc"
  default     = "10.0.0.0/16"
}

variable "private_subnets_eks_cidr" {
  type        = list(any)
  description = "CIDR block for EKS Private Subnet"
  default     = ["10.0.1.0/24","10.0.2.0/24"]
}

variable "private_subnets_rds_cidr" {
  type        = list(any)
  description = "CIDR block for RDS Private Subnet"
  default     = ["10.0.3.0/24", "10.0.4.0/24" ]
}

variable "public_subnets_cidr" {
  type        = list(any)
  description = "CIDR block for Public EKS Subnets"
  default     = ["10.0.5.0/24", "10.0.6.0/24"]
}

variable "cluster-name" {
  type    = string
  default = "mlflow-cluster"
}

variable "availability_zones" {
  type    = list(any)
  default = ["us-east-1a", "us-east-1b"] 
  description = "list of availability zones for the project"
}

# variable "cluster-name" {
#   type    = string
#   default = "mlflow-cluster"
# }

# variable "availability_zones" {
#   type    = list(any)
#   default = ["us-east-1a", "us-east-1b"] 
#   description = "list of availability zones for the project"
# }

# variable "vpc_cidr_block" {
#   description = "CIDR block for the VPC"
#   type        = string
# }

# variable "public_subnets" {
#   description = "List of public subnets CIDR blocks"
#   type        = list(string)
# }

# variable "private_subnets" {
#   description = "List of private subnets CIDR blocks"
#   type        = list(string)
# }

# variable "tags" {
#   description = "Tags to apply to all resources"
#   type        = map(string)
# }
