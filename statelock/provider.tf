
terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "5.84.0"
    }
  }

  backend "s3" {
    bucket = "daws-82ss-remote"
    key    = "expense-backend-infra" # you should have unique keys with in the bucket, same key should not be used in other repos or tf projects
    region = "us-east-1"
    dynamodb_table = "daws-82ss-remote"
  }
}

provider "aws" {
  # Configuration options
  region = "us-east-1"
}
