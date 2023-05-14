terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.0"
    }
  }
}

# Configure the AWS Provider
provider "aws" {
  region = "ap-southeast-2"
}

resource "random_id" "my-random-id" {
  byte_length = 8
}

# Create an S3 Bucket
resource "aws_s3_bucket" "my-bucket" {
  bucket = "my-new-bucket-${random_id.my-random-id.dec}"

  tags = {
    Name        = "my-new-bucket-${random_id.my-random-id.dec}"
    Environment = "Dev"
  }
}