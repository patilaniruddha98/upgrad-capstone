terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.0"
    }
  }

backend "s3" {
    bucket = "capstonelastone"
    key    = "terraform.tfstate"
    region = "us-east-1"
    dynamodb_table = "capstonelasttable"
  }


}

# Configure the AWS Provider
provider "aws" {

  region = "us-east-1"
}
