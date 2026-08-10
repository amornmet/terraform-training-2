output "iam_user_name" {
  value = module.iam.user_name #มาจาก iam/outputs.tf
}

output "iam_user_arn" {
  value = module.iam.user_arn #มาจาก iam/outputs.tf
}

output "s3_bucket_id" {
  value = module.s3.bucket_id #มาจาก s3/outputs.tf
}

output "s3_bucket_arn" {
  value = module.s3.bucket_arn #มาจาก s3/outputs.tf
}