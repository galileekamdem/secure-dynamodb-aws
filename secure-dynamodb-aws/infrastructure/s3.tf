resource "aws_s3_bucket" "logs_bucket" {
  bucket = "${var.project_name}-logs"

  versioning {
    enabled = true
  }

  server_side_encryption_configuration {
    rule {
      apply_server_side_encryption_by_default {
        sse_algorithm = "AES256"
      }
    }
  }

  lifecycle_rule {
    enabled = true
    expiration {
      days = 90
    }
  }

  tags = {
    Purpose = "Store security logs"
  }
}
