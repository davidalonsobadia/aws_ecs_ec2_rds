terraform {
  backend "s3" {
    bucket = "infrastructure-aws-ecs-ec2-rds"
    key    = "terraform.tfstate"
  }

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = ">= 3.72.0"
    }
  }
}

provider "aws" {
  region  = "us-east-1"
}
