output "iam_policy_arn" {
  description = "iam policy arn"
  value = aws_iam_policy.s3_policy.arn #มาจาก policies/main.tf 
}

output "debug_policy_json" {
  value = jsonencode({
    Version = "2012-10-17"
    Statement = [
      for item in var.s3_object_actions : {
        Sid       = item.sid
        Effect    = item.effect
        Principal = { AWS = values(var.user_arns) }
        Action    = item.actions
        Resource  = "${var.bucket_1_arn}/*"
      }
    ]
  })
}