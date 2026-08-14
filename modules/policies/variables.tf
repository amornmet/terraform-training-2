#ส่งไปที่ policies/main.tf
variable "iam_policy_name" {
  description = "iam policy name"
  type = string
}

#ส่งไปที่ policies/main.tf
variable "bucket_1_arn" {
  description = "s3 bucket 1 arn"
  type = string
}

#ส่งไปที่ policies/main.tf
variable "bucket_1_id" {
  description = "s3 bucket 1 id"
  type = string
}

#ส่งไปที่ policies/main.tf
variable "user_arns" {
  description = "iam user arns"
  type = map(string)
}

#ส่งไปที่ policies/main.tf
variable "s3_object_actions" {
  description = "s3 action allowed by iam policy"
  type = list(object({
    sid = string
    effect = string
    actions = list(string)
  }))
}

#ส่งไปที่ policies/main.tf
variable "s3_bucket_actions" {
  description = "s3 action"
  type = list(object({
    sid = string
    effect = string
    actions = list(string)
  }))
}