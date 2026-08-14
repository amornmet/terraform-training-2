resource "aws_s3_bucket" "buckets" {
  for_each = toset(var.buckets) #มาจาก s3/variables.tf

  bucket = each.value
}