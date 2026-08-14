output "bucket_arns" {
  description = "s3 bucket arns"
  value = {
    for name, bucket in aws_s3_bucket.buckets : #มาจาก s3/main.tf
    name => bucket.arn
  }
}

output "bucket_ids" {
  description = "s3 bucket ids"
  value = {
    for name, bucket in aws_s3_bucket.buckets : #มาจาก s3/main.tf
    name => bucket.id
  }
}