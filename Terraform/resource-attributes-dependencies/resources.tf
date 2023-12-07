resource "local_file" "foo" {
    filename = "c:\\users\\filip\\devops-cloud\\terraform\\resource-attributes-dependencies\\foobar.txt"
    content = "bar"
}

resource "local_file" "key_details" {
    filename = "c:\\users\\filip\\devops-cloud\\terraform\\resource-attributes-dependencies\\key.txt"
    content = tls_private_key.pvtkey.private_key_pem
    
}

resource "tls_private_key" "pvtkey" {
    algorithm =  "RSA"
    rsa_bits = 4096
}