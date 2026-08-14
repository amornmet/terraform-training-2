module "iam" {
  source = "./modules/iam"

  users = keys(var.user_bucket_mapping) #ส่งไปที่ iam/variables.tf
}

module "s3" {
  source = "./modules/s3"

  buckets = [
    for config in values(var.user_bucket_mapping) :
    config.bucket
  ] #ส่งไปที่ s3/variables.tf
}

module "policies" {
  source = "./modules/policies"

  iam_policy_name = var.iam_policy_name #ส่งไปที่ policies/variables.tf

  bucket_arns = module.s3.bucket_arns

  bucket_ids = module.s3.bucket_ids

  user_arns = module.iam.user_arns #ส่งไปที่ policies/variables.tf

  user_bucket_mapping = var.user_bucket_mapping

  s3_object_actions = var.s3_object_actions

  s3_bucket_actions = var.s3_bucket_actions
}