resource "aws_s3_bucket" "tf_state" {
  bucket = "metil-terraform-state"

  tags = {
    Name = "metil-terraform-state"
  }
}

resource "aws_s3_bucket_server_side_encryption_configuration" "example" {
  bucket = aws_s3_bucket.tf_state.id

  rule {
    apply_server_side_encryption_by_default {
      sse_algorithm = "aws:kms"
    }
    bucket_key_enabled = true
  }
}