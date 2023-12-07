terraform {
  
  required_version = "~> 1.3"

  required_providers {
    aws = {
        version = "4.29.0"
        source = "hashicorp/aws"
    }

    azurerm = {
        source = "hashicorp/azurerm"
        version = "=3.0.0"
    }

    google = {
        source = "hashicorp/google"
        version = "~>3.5.0"
    }

    oci = {
        source = "hashicorp/oci"
    }

    random = {
        source = "hashicorp/random"
        version = "~>3.0.1"
    }
  }
}