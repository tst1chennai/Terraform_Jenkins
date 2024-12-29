#-----------------------------------------------Create User Module ----------------------------

output "user_name" {
  value = module.create_user.user_name
}

output "user_access_key_id" {
  value = module.create_user.user_access_key_id
}

output "user_secret_access_key" {
  value = module.create_user.user_secret_access_key
  sensitive = true
}

#-----------------------------------------------VPC Module ----------------------------
output "vpc_id" {
  value = module.vpc.vpc_id
}

output "public_subnet_id" {
  value = module.vpc.public_subnet_id
}

output "private_subnet_id" {
  value = module.vpc.private_subnet_id
}

output "internet_gateway_id" {
  value = module.vpc.internet_gateway_id
}