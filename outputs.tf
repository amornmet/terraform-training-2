output "iam_user1_name" {
  value = module.iam["user1"].user_name #มาจาก iam/outputs.tf
}

output "iam_user1_arn" {
  value = module.iam["user1"].user_arn #มาจาก iam/outputs.tf
}

output "iam_user2_name" {
  value = module.iam["user2"].user_name
}

output "iam_user2_arn" {
  value = module.iam["user2"].user_arn
}

output "s3_bucket1_id" {
  value = module.s3["bucket1"].bucket_id #มาจาก s3/outputs.tf
}

output "s3_bucket1_arn" {
  value = module.s3["bucket1"].bucket_arn #มาจาก s3/outputs.tf
}

output "s3_bucket2_id" {
  value = module.s3["bucket2"].bucket_id
}

output "s3_bucket2_arn" {
  value = module.s3["bucket2"].bucket_arn
}