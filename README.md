# terraform-training-2
module s3 iam on aws

Lab Terraform + AWS
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
- $ aws sts login --profile company-dev