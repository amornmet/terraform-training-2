module "iam" {
  source = "./modules/iam"

  users = var.iam_users #ส่งไปที่ iam/variables.tf
}

module "s3" {
  source = "./modules/s3"

  buckets = var.buckets #ส่งไปที่ s3/variables.tf
}

module "policies" {
  source = "./modules/policies"

  iam_policy_name = var.iam_policy_name #ส่งไปที่ policies/variables.tf

  bucket_1_arn = module.s3.bucket_arns[var.buckets[0]] #ส่งไปที่ policies/variables.tf
  bucket_1_id = module.s3.bucket_ids[var.buckets[0]] #ส่งไปที่ policies/variables.tf

  user_arns = module.iam.user_arns #ส่งไปที่ policies/variables.tf

  s3_object_actions = var.s3_object_actions
  
  s3_bucket_actions = var.s3_bucket_actions
}