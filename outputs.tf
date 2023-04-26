# output "vpc_id" {
#   value = aws_vpc.vpc.id
# }

# output "public_subnets" {
#   value = module.public_subnets.subnet_ids
# }

# output "private_subnets" {
#   value = module.private_subnets.subnet_ids
# }

output "private_subnets_eks_ids" {
  value = aws_subnet.private_subnets_eks[*].id
}

output "vpc_id" {
  value = aws_vpc.main_vpc.id
}

output "aws_rds_subnet_group_id" {
  value = aws_db_subnet_group.rds_subnet_group.id
}

output "public_subnets_ids" {
  value = aws_subnet.public_subnets[*].id
}
