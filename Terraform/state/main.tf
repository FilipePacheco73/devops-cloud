terraform {
  required_version = "~> 1.3"
  required_providers {
    random = {
        source = "hashicorp/random"
        version = "~> 3.4"
    }
  }
}
resource "random_password" "password" {
    length = 20
    special = true  
}

output "password"{
    value = random_password.password.result
    sensitive = true
}