#IAM Policy
resource "aws_iam_policy" "s3_policy" {
  for_each = {
    for user, config in var.user_bucket_mapping :
    user => config
    if config.policy == "iam"
  }

  name = "${var.iam_policy_name}-${each.key}"

  policy = jsonencode({
    Version = "2012-10-17"

    Statement = [
      for statements in var.s3_bucket_actions : {
        Effect = statements.effect
        Action = statements.actions

        Resource = var.bucket_arns[each.value.bucket]
      }
    ]
  })
}

resource "aws_iam_user_policy_attachment" "users" {
  for_each = var.user_bucket_mapping

  user = each.key

  policy_arn = aws_iam_policy.s3_policy[each.key].arn
}

resource "aws_s3_bucket_policy" "buckets" {
  for_each = {
    for user, config in var.user_bucket_mapping :
    user => config
    if config.policy == "bucket"
  }

  bucket = var.bucket_ids[each.value.bucket]

  policy = jsonencode({
    Version = "2012-10-17"

    Statement = [
      for item in var.s3_object_actions : {
        Sid = item.sid
        Effect = item.effect
        Principal = {
          AWS = var.user_arns[each.key] #มาจาก policies/variables.tf
        }

        Action = item.actions

        Resource = "${var.bucket_arns[each.value.bucket]}/*"
      }
    ]
  })
}