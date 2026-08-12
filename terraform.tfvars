aws_region = "ap-southeast-2"

iam_users = {
  user1 = {
    username = "pliw-dev1"

    bucket_key = "bucket1"

    policy_actions = [
      "s3:GetObject",
      "s3:ListBucket"
    ]
  }

  user2 = {
    username = "pliw-dev2"

    bucket_key = "bucket2"

    policy_actions = [
      "s3:GetObject",
      "s3:PutObject",
      "s3:DeleteObject",
      "s3:ListBucket"
    ]
  }
}

s3_buckets = {
  bucket1 = {
    bucket_name = "s3-pliw-dev1"

    policy_actions = [
      "s3:GetObject",
      "s3:ListBucket"
    ]

    principal_arn = ""
  }

  bucket2 = {
    bucket_name = "s3-pliw-dev2"

    policy_actions = [
      "s3:GetObject",
      "s3:PutObject",
      "s3:DeleteObject",
      "s3:ListBucket"
    ]

    principal_arn = ""
  }
}

#bucket_name = "s3-pliw-dev"
