# modules/create-user/variables.tf

variable "user_name" {
  description = "The name of the IAM user"
  type        = string
}

variable "create_policy" {
  description = "Whether to create a policy for the user"
  type        = bool
  default     = false
}

variable "policy_name" {
  description = "The name of the IAM policy"
  type        = string
  default     = "example-policy"
}

variable "policy_description" {
  description = "The description of the IAM policy"
  type        = string
  default     = "A policy that grants permissions"
}

variable "policy_json" {
  description = "The policy in JSON format"
  type        = string
  default     = <<EOF
{
  "Version": "2012-10-17",
  "Statement": [
    {
      "Effect": "Allow",
      "Action": "s3:*",
      "Resource": "*"
    }
  ]
}
EOF
}

variable "create_access_key" {
  description = "Whether to create an access key for the user"
  type        = bool
  default     = false
}