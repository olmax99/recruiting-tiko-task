variable "bucket_config" {
  description = "map of btiko bucket configs"
  type = list(any)
  default = [
    {
      tiko_bucket_name = "tiko-bucket-50"
      tiko_bucket_version_enabled = true
    }
  ]
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

locals {
  bucket_config = { for bucket_map in var.bucket_config : 
    bucket_map["tiko_bucket_name"] => {
      tiko_bucket_name = bucket_map["tiko_bucket_name"]
      tiko_bucket_version_enabled  = bucket_map["tiko_bucket_version_enabled"]
    }
  }
}
