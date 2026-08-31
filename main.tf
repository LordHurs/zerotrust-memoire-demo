provider "aws" {
  region = "eu-west-3"
}

resource "aws_s3_bucket" "demo_bucket" {
  bucket = "zerotrust-memoire-demo-bucket"

  tags = {
    Project = "ZeroTrust-Memoire"
  }
}
