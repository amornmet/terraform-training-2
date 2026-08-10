module "s3" {
  source = "./modules/s3"
  
  #s3/variables.tf = variables.tf
  bucket_name = var.bucket_name
}