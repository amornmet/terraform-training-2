resource "aws_iam_policy" "s3_policy" {
  name = var.iam_policy_name

  policy = jsonencode({
    Version = "2012-10-17"

    Statement = [
      for statements in var.s3_bucket_actions : {
        Effect = statements.effect
        Action = statements.actions

        Resource = var.bucket_1_arn
      }
    ]
  })
}

resource "aws_iam_user_policy_attachment" "users" {
  for_each = var.user_arns

  user = split("/", each.value)[1]
  policy_arn = aws_iam_policy.s3_policy.arn
}

resource "aws_s3_bucket_policy" "bucket_1" {
  bucket = var.bucket_1_id

  policy = jsonencode({
    Version = "2012-10-17"

    Statement = [
      for item in var.s3_object_actions : {
        Sid = item.sid
        Effect = item.effect
        Principal = {
          AWS = values(var.user_arns) #มาจาก policies/variables.tf
        }

        Action = item.actions

        Resource = "${var.bucket_1_arn}/*"
      }
    ]
  })
}