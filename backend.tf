terraform {
  backend "s3" {
    bucket         = "laurenjcloudreachs3"
    key            = "projects/3tierattempt/vpc-terraform.tfstates"
    region         = "us-east-1"
    dynamodb_table = "terraform-state-lock-dynamo"
  }
}