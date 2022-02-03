terraform {
  required_version = "1.0.0"
  required_providers {
    akamai = {
      source  = "sample/provider"
      version = "1.0.0"
    }
  }
}

variable "sample_access_token" {}
variable "sample_client_secret" {}
variable "csample_host" {}

provider "sample" {
  config {
    access_token  = var.sample_access_token
    client_secret = var.sample_client_secret
    host          = var.csample_host
  }
}