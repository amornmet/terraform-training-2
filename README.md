# terraform-training-2
module s3 iam on aws

# Lab Terraform + AWS
- IAM
- S3
- Module

การส่งค่าระหว่าง tfvars -> variable -> module -> resource -> output

command aws auth
# check auth key (without profile)
- $ aws sts get-caller-identity

# check auth key (with profile)
- $ aws sts get-caller-identity --profile company-dev

# re-login
- $ aws sso login --profile company-dev

# Architect Directory
terraform-training-2
|
|-providers.tf
|-main.tf
|-variables.tf
|-terraform.tfvars
|-outputs.tf
|
|-modules/
    |
    |-iam/
    |   |-main.tf
    |   |-variables.tf
    |   |-outputs.tf
    |
    |-s3/
        |-main.tf
        |-variables.tf
        |-outputs.tf


# Process S3 Module
terraform.tfvars (bucket_name) -> variables.tf (var.bucket_name) -> s3 (bucket_name) -> s3/variables.tf (var.bucket_name) -> s3/main.tf (aws_s3_bucket)