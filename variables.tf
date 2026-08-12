#มาจาก terraform.tfvars
variable "aws_region" {
  description = "aws region"
  type        = string
}

#มาจาก terraform.tfvars
variable "iam_users" {
  description = "iam users"

  type = map(object({
    user = string
    bucket_key     = string
    policy_actions = list(string)
  }))
}

#มาจาก terraform.tfvars
variable "s3_buckets" {
  description = "s3 bucket"

  type = map(object({
    bucket_name    = string
    policy_actions = list(string)
  }))
}
