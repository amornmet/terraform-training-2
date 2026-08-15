#มาจาก main.tf
variable "users" {
  description = "iam users"
  type = list(string)
} #ส่งไปที่ iam/main.tf