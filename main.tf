module "iam" {
  source = "./modules/iam"

  #iam/variables.tf = variables.tf
  user = var.iam_user
  password = var.password
  bucket_arn = module.s3.bucket_arn #มาจาก s3/outputs.tf

}

module "s3" {
  source = "./modules/s3"
  
  #s3/variables.tf = variables.tf
  bucket_name = var.bucket_name
}