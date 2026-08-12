#มาจาก terraform.tfvars
variable "aws_region" {
  description = "aws region"
  type = string
}

#มาจาก terraform.tfvars
variable "iam_user" {
  description = "iam user"
  type = string
}

#มาจาก terraform.tfvars
variable "bucket_name" {
  description = "s3 bucket"
  type = string
}

variable "password" {
  description = "password user"
  type = string
}