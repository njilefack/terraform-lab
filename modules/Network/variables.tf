variable "cidr_block" {
    type = string
    default = "10.0.0.0/16"
}

variable "vpc_name" {
    type = string
    default = "terraformvpc"
}

variable "dns_hostnames" {
    type = string
    default = "True"  
}

variable "vpc_AZs" {
    type = list (string)
    default = ["us-west-2a", "us-west-2b"] 
}
variable "vpc_tags" {
    type = map(string)
    tags = {
        Name = "lab"
        Env = "sandbox"
    }
}
variable "vpc_id" {
    type = string
    description = "This is the vpc id created"
}

variable "public_sub" {
    type = list(string)
    default = ["pubsn01" , "pubsn02"]
}

variable "private_sub" {
    type = list(string)
    default = ["privsb01" , "privsn02"]
}

variable "pubsn_cidr" {
    type = list(string)
    default = ["10.0.3.0/28", "10.0.5.0/28"]
    desdescription = "This is the cidr block for public subnets"  
}

variable "privsn_cidr" {
    type = list(string)
    default = ["10.0.2.0/28", "10.0.4.0/28"]
    desdescription = "This is the cidr block for private subnets"  
}





