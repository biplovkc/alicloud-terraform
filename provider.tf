terraform {
  required_providers {
    alicloud = {
      source  = "aliyun/alicloud"
      version = "1.212.0"
    }
  }
}

provider "alicloud" {
  region     = var.region
  access_key = var.alicloud_access_key
  secret_key = var.alicloud_secret_key
}

