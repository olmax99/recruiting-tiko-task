variable "bucket_config" {
  description = "map of btiko bucket configs"
  type = map
  default = {
    tiko_bucket_50 = {
      tiko_bucket_name = "tiko-bucket-50"
      tiko_bucket_version_enabled = true
    }
  }
}

variable "tiko_bucket_name" {
  description = "name of the tiko bucket"
  type = string
  default = "tiko-bucket-01"
}

variable "tiko_bucket_version_enabled" {
  description = "version enabled or not"
  type = bool
  default = true
}
