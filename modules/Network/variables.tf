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
<<<<<<< HEAD
    default = ["us-west-1a", "us-west-1c"] 
}
variable "vpc_tags" {
    type = map(string)
    default = {
        Name = "lab",
=======
    default = ["us-west-2a", "us-west-2b"] 
}
variable "vpc_tags" {
    type = map(string)
    tags = {
        Name = "lab"
>>>>>>> 69f9cb2ec32702618b58453ea9113c8f49e45718
        Env = "sandbox"
    }
}
variable "vpc_id" {
    type = string
<<<<<<< HEAD
    default = "vpc-0d6725cf418ffaa08"
=======
>>>>>>> 69f9cb2ec32702618b58453ea9113c8f49e45718
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
<<<<<<< HEAD
    default = ["10.0.8.0/24", "10.0.10.0/24"]
    description = "This is the cidr block for public subnets"  
=======
    default = ["10.0.3.0/28", "10.0.5.0/28"]
    desdescription = "This is the cidr block for public subnets"  
>>>>>>> 69f9cb2ec32702618b58453ea9113c8f49e45718
}

variable "privsn_cidr" {
    type = list(string)
<<<<<<< HEAD
    default = ["10.0.15.0/24", "10.0.17.0/24"]
    description = "This is the cidr block for private subnets" 
}

variable "pub_routecidr01" {
    type = string
    default = "0.0.0.0/0"
}

variable "pub_routecidr02" {
    type = string
    default = "0.0.0.0/0"
}


=======
    default = ["10.0.2.0/28", "10.0.4.0/28"]
    desdescription = "This is the cidr block for private subnets"  
}

>>>>>>> 69f9cb2ec32702618b58453ea9113c8f49e45718




