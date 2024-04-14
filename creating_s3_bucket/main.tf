provider "aws" {

  region = "us-east-1"
}

resource "aws_s3_bucket" "s3-bucket" {
  bucket = "www.techsystemdesign.com"

  tags = {
    Environment = "dev"
  }
}

resource "aws_s3_object" "index" {
  bucket = aws_s3_bucket.s3-bucket.id
  key    = "index.html"
  source = "D:\\KloudBlogs\\Projects\\static_website_on_s3\\s3-static-website\\index.html"
}

resource "aws_s3_object" "error" {
  bucket = aws_s3_bucket.s3-bucket.id
  key    = "error.html"
  source = "D:\\KloudBlogs\\Projects\\static_website_on_s3\\s3-static-website\\error.html"
}