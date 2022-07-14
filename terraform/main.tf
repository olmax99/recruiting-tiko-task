module "s3_bucket" {
  source = "terraform-aws-modules/s3-bucket/aws"

  for_each = local.bucket_config

  bucket = each.value.tiko_bucket_name
  acl    = "private"

  versioning = {
    enabled = each.value.tiko_bucket_version_enabled
  }

  lifecycle_rule = [
    {
      id      = "DeleteContentAfter90Days"
      enabled = true
      prefix  = ""
      prevent_destroy = true

      expiration = {
        days = 90
      }

      noncurrent_version_expiration = {
        days = 60
      }
    },
  ]

  block_public_acls       = true
  block_public_policy     = true
  ignore_public_acls      = true
  restrict_public_buckets = true
}

output debug_bucket_config {
  value = local.bucket_config
}
