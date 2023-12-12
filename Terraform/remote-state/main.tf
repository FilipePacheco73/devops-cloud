terraform {
  required_version = "~> 1.3"
  required_providers {
    google = {
        source = "hashicorp/google"
        version = "~> 4.39"
    }
    random = {
        version = "~> 3.4"
        source = "hashicorp/random"
    }
  }

  backend "gcs" {
    bucket = "tcb-tf-rif30v781wm7wgaf"
    prefix = "terraform/state"    
  }
}

provider "google" {
    project = "foward-dream-362422"
    region = "us-central1"
    zone = "us-central1-f"
    #export GOOGLE_APPLICATION_CREDENTIALS = "c:\\terraform\\foward-dream.json"
}

resource "local_file" "vm" {
    filename = "c:\\terraform\\vm-dev"
    content = "VM for Dev Environment"  
}