terraform {
  backend "s3" {
    bucket         = "terraform-state-security-cloud"
    encrypt        = true
    key            = "cloudsecurity/prod/terraform.tfstate"
    region         = "us-east-1"
    dynamodb_table = "cloudsecurity-state-lock"
    #use_lockfile   = true
  }
}
