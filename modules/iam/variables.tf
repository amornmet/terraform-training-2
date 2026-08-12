#มาจาก terraform.tfvars & variables.tf & main.tf
variable "user" {
  description = "iam user"
  type = string
}

#มาจาก main.tf
variable "bucket_arn" {
  description = "s3 bucket arn"
}