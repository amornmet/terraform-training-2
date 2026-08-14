output "iam_policy_arn" {
  description = "iam policy arn"
  value = {
    for user, policy in aws_iam_policy.s3_policy :
    user => policy.arn
  } #มาจาก policies/main.tf 
}

output "bucket_policy_ids" {
  description = "bucket policy arn"
  value = {
    for user, policy in aws_s3_bucket_policy.buckets :
    user => policy.id
  }
}
