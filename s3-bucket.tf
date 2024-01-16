resource "aws_s3_bucket" "s3_bucket" {
  bucket = "breno500as-terraform-remote-state"
}

resource "aws_s3_bucket_versioning" "versioning" {
  bucket = aws_s3_bucket.s3_bucket.id
  versioning_configuration {
    status = "Enabled"
  }
}