terraform {
  backend "s3" {
    bucket = "metil-terraform-state"
    key    = "tf_state/terraform.tfstate"
    region = "eu-central-1"
  }

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4"
    }
  }
}

# Configure the AWS Provider
provider "aws" {
}
