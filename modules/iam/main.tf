resource "aws_iam_user" "this" {
  name = var.username #มาจาก iam/variables.tf
}

resource "aws_iam_user_policy" "s3_readonly" {
  name = "s3-readonly"

  user = aws_iam_user.this.name

  policy = jsonencode({
    version = "2012-10-17"
  })
}