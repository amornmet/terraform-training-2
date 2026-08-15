module "iam" {
  source = "./modules/iam"

  #มาจาก variables.tf
  users = keys(var.user_bucket_mapping) #ส่งไปที่ iam/variables.tf
}

module "s3" {
  source = "./modules/s3"

  #มาจาก variables.tf
  buckets = [
    for config in values(var.user_bucket_mapping) :
    config.bucket
  ] #ส่งไปที่ s3/variables.tf
}

module "policies" {
  source = "./modules/policies"

  #มาจาก variables.tf
  iam_policy_name = var.iam_policy_name #ส่งไปที่ policies/variables.tf

  #มาจาก s3/outputs.tf
  bucket_arns = module.s3.bucket_arns #ส่งไปที่ policies/variables.tf

  #มาจาก s3/outputs.tf
  bucket_ids = module.s3.bucket_ids #ส่งไปที่ policies/variables.tf

  #มาจาก iam/outputs.tf
  user_arns = module.iam.user_arns #ส่งไปที่ policies/variables.tf

  #มาจาก variables.tf
  user_bucket_mapping = var.user_bucket_mapping #ส่งไปที่ policies/variables.tf

  #มาจาก variables.tf
  s3_object_actions = var.s3_object_actions #ส่งไปที่ policies/variables.tf

  #มาจาก variables.tf
  s3_bucket_actions = var.s3_bucket_actions #ส่งไปที่ policies/variables.tf
}