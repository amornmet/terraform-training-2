#มาจาก iam/outputs.tf
output "iam_users" {
  description = "created iam users"
  value = module.iam.user_arns
}

#มาจาก s3/outputs.tf
output "aws_s3_bucket" {
  description = "created s3 buckets"
  value = module.s3.bucket_arns
}

#มาจาก policies/outputs.tf
output "iam_policy_arn" {
  description = "created iam policy arn"
  value = module.policies.iam_policy_arn
}