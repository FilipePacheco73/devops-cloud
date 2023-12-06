resource "local_file" "my-local-files" {
    filename = "c:\\users\\filip\\devops-cloud\\terraform\\providers\\notes.txt"
    content = "HCL Syntax"
}

resource "random_string" "random" {
    length = 16 
}

resource "random_integer" "integer-001" {
    min = 10
    max = 999  
}