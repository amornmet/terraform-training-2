output "user_arns" {
  description = "iam user arns"
  value = {
    for name, user in aws_iam_user.users : #มาจาก iam/main.tf
    name => user.arn
  }
}