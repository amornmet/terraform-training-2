output "bucket_id" {
  value = aws_s3_bucket.this.id #มาจาก s3/main.tf
}

output "bucket_arn" {
  value = aws_s3_bucket.this.arn #มาจาก s3/main.tf
}