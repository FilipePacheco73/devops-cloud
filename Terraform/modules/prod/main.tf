module "prod_vm" {
    source = "../_modules/instances"
    env = "prod"  
}