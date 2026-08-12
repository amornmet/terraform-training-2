module "iam" {
  for_each = var.iam_users

  source = "./modules/iam"

  user = each.key

}

module "s3" {
  for_each = var.s3_buckets #มาจาก variables.tf

  source = "./modules/s3"

  #s3/variables.tf = variables.tf
  bucket_name    = each.value.bucket_name
}

resource "aws_iam_user_policy" "s3_policy" {
  for_each = var.iam_users

  name = "${each.value.username}-s3-policy"

  user = module.iam[each.key].user_name

  policy = jsonencode({
    Version = "2012-10-17"

    Statement = [
      {
        Sid = "ListBucket"
        Effect = "Allow"

        Action = [
          "s3:ListBucket"
        ]

        Resource = [
          module.s3[each.value.bucket_key].bucket_arn
        ]
      },
      {
        Sid = "ObjectAccess"
        Effect = "Allow"

        Action = each.value.policy_actions

        Resource = [
          "${module.s3[each.value.bucket_key].bucket_arn}/*"
        ]
      }
    ]
  })
}