provider "datadog" {
  api_key = var.DD_API_KEY
  app_key = var.DD_APP_KEY
  api_url = var.DD_API_URL
}

provider "aws" {
  region = "us-east-1"
}