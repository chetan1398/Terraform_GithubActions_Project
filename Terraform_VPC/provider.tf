terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "5.51.1"
    }
  }
  backend "s3" {
    bucket = "terraform-backend-s3-c"
    key    = "dev/terraform.tfstate"
    region = "us-east-1"
  }


}

provider "aws" {
  region = "us-east-1"
}