# modules/create-user/outputs.tf

output "user_name" {
  description = "The IAM user name"
  value       = aws_iam_user.user.name
}

output "user_access_key_id" {
  description = "The access key ID for the user"
  value       = aws_iam_access_key.access_key.*.id
  sensitive   = true
}

output "user_secret_access_key" {
  description = "The secret access key for the user"
  value       = aws_iam_access_key.access_key.*.secret
  sensitive   = true
}