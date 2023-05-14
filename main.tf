provider "aws" {
  region = var.region
}

resource "aws_s3_bucket" "example" {
  bucket = var.s3.bucket_name

  tags = {
    Name        = "source"
    Environment = "terraform"
  }
}
