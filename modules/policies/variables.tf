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