output "user_name" {
  value = aws_iam_user.this.name #มาจาก iam/main.tf
}

output "user_arn" {
  value = aws_iam_user.this.arn #มาจาก iam/main.tf
}