resource "aws_s3_bucket" "lifecycle" {
    bucket = "testing-lifecycle-1000110"

    lifecycle {
        create_before_destroy = true
        # prevent_destroy = true
        # ignore_changes = [tags]
    }

    tags = {
      "test" = "lifecycle"
    }

}
