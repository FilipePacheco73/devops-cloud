output "string_name_result" {
    value = "Bucket Name: '${random_string.bucket_name.id}" 
}

output "password_value_id" {
    value = random_password.db_password.result
    sensitive = true 
}

output "uuid_value_id" {
    value = random_uuid.unique_id.id  
}