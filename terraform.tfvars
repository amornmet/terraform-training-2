#ส่งไปที่ variables.tf
aws_region = "ap-southeast-2"

#ส่งไปที่ variables.tf
iam_users = [ 
  "terraform-user-01",
  "terraform-user-02" 
]

#ส่งไปที่ variables.tf
buckets = [ 
  "my-company-bucket-001",
  "my-company-bucket-002" 
]

#ส่งไปที่ variables.tf
iam_policy_name = "terraform-s3-policy"

#ส่งไปที่ variables.tf
#s3_object_actions = [
#  "s3:GetObject",
#  "s3:PutObject",
#  "s3:DeleteObject"
#]

#ส่งไปที่ variables.tf
s3_bucket_actions = [{
  sid = "allowbucketaction"
  effect = "Allow"
  actions = [ "s3:ListAllMyBuckets", "s3:GetBucketLocation" ]
}

]

s3_object_actions = [ {
  sid = "allowobjectaction"
  effect = "Allow"
  actions = [ "s3:GetObject", "s3:PutObject", "s3:DeleteObject" ]
} ]