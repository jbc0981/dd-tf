# Check the version you'll use here
# https://registry.terraform.io/providers/DataDog/datadog/latest

terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = ">= 4.54"
    }
    datadog = {
      source  = "DataDog/datadog"
      version = "3.34.0"
    }
  }
}