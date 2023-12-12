resource "local_file" "vm" {
    filename = "c:\\users\\filip\\devops-cloud\\terraform\\modules\\${var.env}\\vm-${var.env}.txt"
    content = "VM for ${var.env} Environment" 
}

resource "tls_private_key" "pvtkey" {
    algorithm = "RSA"
    rsa_bits = 4096
}

resource "local_file" "key_details" {
    filename = "c:\\users\\filip\\devops-cloud\\terraform\\modules\\${var.env}\\${var.env}-key.txt"
    content = tls_private_key.pvtkey.private_key_pem
}