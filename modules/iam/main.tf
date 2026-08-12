resource "aws_iam_user" "this" {
  name = var.user #มาจาก iam/variables.tf
}

resource "aws_iam_user_login_profile" "this" {
  user = aws_iam_user.this.name
  password_reset_required = false
}

resource "aws_iam_user_policy" "s3_terraform" {
  name = "s3-terraform"

  user = aws_iam_user.this.name

  policy = jsonencode({
    Version = "2012-10-17"

    Statement = [
        {
            Effect = "Allow"

            Action = [
                "s3:GetObject",
                "s3:ListBucket",
                "s3:PutObject",
                "s3:DeleteObject"
            ]

            Resource = [
                var.bucket_arn, #มาจาก main.tf
                "${var.bucket_arn}/*" #มาจาก iam/variables.tf
            ]
        },
        {
            Effect = "Allow"

            Action = [
                "s3:ListAllMyBuckets"
            ]

            Resource = [
                "*"
            ]
        }
    ]
    })
}