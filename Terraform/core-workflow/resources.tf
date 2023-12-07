resource "random_pet" "foo" {
  length    = var.random_length
  separator = var.random_separator
}

resource "random_string" "random" {
  length           = 16
  special          = true
  override_special = "!@#$%"
}

resource "local_file" "file-001" {
  filename = "c:\\users\\filip\\devops-cloud\\terraform\\core-workflow\\notes.txt"
  content  = "HCL Syntax"
}

resource "tls_private_key" "pvtkey" {
  algorithm = "RSA"
  rsa_bits  = 4096
}

resource "local_file" "key_details" {
  filename = "c:\\users\\filip\\devops-cloud\\terraform\\core-workflow\\key.txt"
  content  = tls_private_key.pvtkey.private_key_pem
}