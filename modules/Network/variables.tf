variable "cidr_block" {
    type = string
    default = "10.0.0.0/16"
}

variable "vpcname" {
    type = string
    default = "terraformvpc"
}

variable "dnshostnames" {
    type = string
    default = "True"  
}

variable "vpcAZs" {
    type = list (string)
    default = ["us-west-2a", "us-west-2b"] 
}
