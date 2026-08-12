resource "aws_iam_user" "this" {
  name = var.user #มาจาก iam/variables.tf
}