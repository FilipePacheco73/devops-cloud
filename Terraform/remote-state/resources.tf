resource "google_storage_bucket" "tcb-tf" {
    name = "tcb-tf-${random_string.random_bucket_name.id}"
    location = "US-CENTRAL1"
    force_destroy = true  
}

resource "random_string" "random_bucket_name" {
    length = 16
    special = false
    lower = true
    upper = true  
}