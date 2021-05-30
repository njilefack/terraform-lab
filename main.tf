module "vpc" {
    source = "./modules/Network"
    vpc_id = var.vpc_id
    #version = ">3.0.0"
}