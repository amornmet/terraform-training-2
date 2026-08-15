#มาจาก main.tf
variable "buckets" {
  description = "s3 bucket names"
  type = list(string)
}