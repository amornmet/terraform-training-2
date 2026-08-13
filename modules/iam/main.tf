resource "aws_iam_user" "users" {
  for_each = toset(var.users) #มาจาก iam/variables.tf

  name = each.value
}