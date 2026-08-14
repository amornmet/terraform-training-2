#ส่งไปที่ variables.tf
aws_region = "ap-southeast-2"

#ส่งไปที่ variables.tf
iam_users = [
  "pliw-dev-03",
  "pliw-dev-04"
]

#ส่งไปที่ variables.tf
buckets = [
  "pliw-s3-bucket-03",
  "pliw-s3-bucket-04"
]

#ส่งไปที่ variables.tf
user_bucket_mapping = {
  pliw-dev-01 = {
    bucket = "pliw-s3-bucket-01"
    policy = "iam"
  }

  pliw-dev-02 = {
    bucket = "pliw-s3-bucket-02"
    policy = "bucket"
  }
}

#ส่งไปที่ variables.tf
iam_policy_name = "terraform-s3-policy"

#ส่งไปที่ variables.tf
s3_bucket_actions = [{
  sid    = "allowbucketaction"
  effect = "Allow"
  actions = [
    "s3:ListAllMyBuckets",
    "s3:GetBucketLocation"
  ]
}]

#ส่งไปที่ variables.tf
s3_object_actions = [{
  sid    = "allowobjectaction"
  effect = "Allow"
  actions = [
    "s3:GetObject",
    "s3:PutObject",
    "s3:DeleteObject"
  ]
}]