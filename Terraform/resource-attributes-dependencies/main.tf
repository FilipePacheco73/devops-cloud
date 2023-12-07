terraform {
  required_version = "~> 1.3"
  required_providers {
    random = {
        version = "~> 3.4"
        source = "hashicorp/random"
    }
    local = {
        version = "~> 2.2"
        source = "hashicorp/local"
    }
    tls = {
        version = "~> 4.0"
        source = "hashicorp/tls"
    }
  }
}