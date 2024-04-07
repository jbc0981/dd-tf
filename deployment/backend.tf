terraform {
  backend "s3" {
    encrypt        = true
    bucket         = "github-actions-terraform-state-012345678910-us-east-1"
    key            = "datadog/terraform.tfstate"
    region         = "us-east-1"
    dynamodb_table = "github-actions-terraform-locks"
  }
}
