resource "aws_s3_bucket" "this" {
  bucket = var.bucket_name #มาจาก s3/variables.tf
}