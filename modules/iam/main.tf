resource "aws_iam_user" "this" {
  name = var.username #มาจาก iam/variables.tf
}

resource "aws_iam_user_policy" "s3_readonly" {
  name = "s3-readonly"

  user = aws_iam_user.this.name

  policy = jsonencode({
    Version = "2012-10-17"

    Statement = [
        {
            Effect = "Allow"

            Action = [
                "s3:GetObject",
                "s3:ListBucket"
            ]

            Resource = [
                var.bucket_arn, #มาจาก main.tf
                "${var.bucket_arn}/*" #มาจาก main.tf
            ]
        }
    ]
    })
}