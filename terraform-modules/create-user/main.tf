resource "aws_iam_user" "user" {
  name = var.user_name
}

# Optionally, create an IAM policy and attach it to the user
resource "aws_iam_policy" "user_policy" {
  count = var.create_policy ? 1 : 0

  name        = var.policy_name
  description = var.policy_description
  policy      = var.policy_json
}

# Attach the IAM policy to the user
resource "aws_iam_user_policy_attachment" "user_policy_attachment" {
  count      = var.create_policy ? 1 : 0
  user       = aws_iam_user.user.name
  policy_arn = aws_iam_policy.user_policy[0].arn
}

# Optionally, create an IAM access key for programmatic access
resource "aws_iam_access_key" "access_key" {
  count = var.create_access_key ? 1 : 0

  user = aws_iam_user.user.name
}

