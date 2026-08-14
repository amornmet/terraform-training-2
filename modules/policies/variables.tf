#ส่งไปที่ policies/main.tf
variable "iam_policy_name" {
  description = "iam policy name"
  type = string
}

#ส่งไปที่ policies/main.tf
variable "user_arns" {
  description = "iam user arns"
  type = map(string)
}

variable "bucket_arns" {
  description = "s3 bucket arn map"
  type = map(string)
}


variable "bucket_ids" {
  description = "s3 bucket id map"
  type = map(string)
}
variable "user_bucket_mapping" {
  description = "mapping iam user to s3"
  type = map(object({
    bucket = string
    policy = string
  }))
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