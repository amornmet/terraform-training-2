#aws_region
variable "aws_region" {
  description = "aws region"
  type = string
}

#iam_users
variable "iam_users" {
  description = "iam users"
  type = list(string)
}

#buckets
variable "buckets" {
  description = "s3 buckets"
  type = list(string)
}

#iam_policy_name
variable "iam_policy_name" {
  description = "iam policy name"
  type = string
}