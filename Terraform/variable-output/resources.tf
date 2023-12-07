resource "random_string" "bucket_name" {
    length = 16
}
resource "random_password" "db_password" {
    length = 8
    special = true 
}
resource "random_uuid" "unique_id" {
}
