provider "aws" {
  region = "eu-west-3"
}

resource "aws_s3_bucket" "demo_bucket" {
  bucket = "zerotrust-memoire-demo-bucket"

  tags = {
    Project = "ZeroTrust-Memoire"
  }
}

resource "aws_s3_bucket_public_access_block" "demo_bucket_block" {
  bucket = aws_s3_bucket.demo_bucket.id

  block_public_acls       = true
  block_public_policy     = true
  ignore_public_acls      = true
  restrict_public_buckets = true
}
