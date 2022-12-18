resource "aws_s3_bucket" "b_tf" {
  bucket = "my-bucket-tf-0001-remote-state"
}

resource "aws_s3_bucket_versioning" "t_v" {
  bucket = aws_s3_bucket.b_tf.id

  versioning_configuration {
    status = "Enabled"
  }
}