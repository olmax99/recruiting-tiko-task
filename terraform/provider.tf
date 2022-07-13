terraform {
  
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "~> 4.5.0"
    }
  }

  required_version = ">= 0.15"
}

provider "aws" {
  region                      = "eu-central-1"
  skip_credentials_validation = true
  skip_requesting_account_id  = true
  skip_metadata_api_check     = true
  s3_use_path_style           = true
  access_key                  = "***"
  secret_key                  = "***"
}


