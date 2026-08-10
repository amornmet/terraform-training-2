#มาจาก terraform.tfvars & variables.tf & main.tf
variable "username" {
  description = "iam user"
  type = string
}

#มาจาก s3/outputs.tf
variable "bucket_arn" {
  description = "value"
}