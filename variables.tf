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

#s3_object_actions
#variable "s3_object_actions" {
#  description = "s3 bucket policy statements"
#  type = list(string)
#}

#s3_bucket_actions
variable "s3_bucket_actions" {
  description = "s3 action"
  type = list(object({
    sid = string
    effect = string
    actions = list(string)
  }))
}

variable "s3_object_actions" {
  description = "s3 bucket policy"
  type = list(object({
    sid = string
    effect = string
    actions = list(string)
  }))
}