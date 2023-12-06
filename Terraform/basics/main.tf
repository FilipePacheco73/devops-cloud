resource "local_file" "file-001" {
    filename = "c:\\users\\filip\\devops-cloud\\terraform\\basics\\notes.txt"
    content = "HCL Syntax"
}

resource "local_file" "file-002" {
    filename = "c:\\users\\filip\\devops-cloud\\terraform\\basics\\date.sh"
    content = "whoami && date"      
}

resource "local_file" "file-003" {
    filename = "c:\\users\\filip\\devops-cloud\\terraform\\basics\\ip.sh"
    content = "ipconfig | clip"      
}