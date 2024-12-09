terraform {
  backend "s3" {
    bucket         = "jingxu-terraform-state" 
    key            = "terraform/state/terraform.tfstate"
    region         = "us-east-1" 
    dynamodb_table = "jingxu-terraform-state-lock" 
  }
}
