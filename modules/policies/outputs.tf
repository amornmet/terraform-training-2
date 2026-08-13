output "iam_policy_arn" {
  description = "iam policy arn"
  value = aws_iam_policy.s3_policy.arn #มาจาก policies/main.tf 
}