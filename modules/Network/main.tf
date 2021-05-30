## vpc creation
resource "aws_vpc" "terraformvpc" {
    cidr_block = var.cidr_block
    tags = var.vpc_tags
    }

## public subnets
resource "aws_subnet" "pubsn01" {
    vpc_id = var.vpc_id
    cidr_block = var.pubsn_cidr[0]
    tags = var.vpc_tags
<<<<<<< HEAD
    availability_zone = var.vpc_AZs[0] 
=======
    avaavailability_zone = var.vpc_AZs[0] 
>>>>>>> 69f9cb2ec32702618b58453ea9113c8f49e45718
}
resource "aws_subnet" "pubsn02" {
    vpc_id = var.vpc_id
    cidr_block = var.pubsn_cidr[1]
    tags = var.vpc_tags
<<<<<<< HEAD
    availability_zone = var.vpc_AZs[1] 
=======
    avaavailability_zone = var.vpc_AZs[1] 
>>>>>>> 69f9cb2ec32702618b58453ea9113c8f49e45718
}

# private subnets
resource "aws_subnet" "privsn01" {
    vpc_id = var.vpc_id
    cidr_block = var.privsn_cidr[0]
    tags = var.vpc_tags
<<<<<<< HEAD
    availability_zone = var.vpc_AZs[0] 
=======
    avaavailability_zone = var.vpc_AZs[0] 
>>>>>>> 69f9cb2ec32702618b58453ea9113c8f49e45718
  
}
resource "aws_subnet" "privsn02" {
    vpc_id = var.vpc_id
    cidr_block = var.privsn_cidr[1]
    tags = var.vpc_tags
<<<<<<< HEAD
    availability_zone = var.vpc_AZs[1] 
=======
    avaavailability_zone = var.vpc_AZs[1] 
>>>>>>> 69f9cb2ec32702618b58453ea9113c8f49e45718
}

# internet gateway
resource "aws_internet_gateway" "igw" {
    vpc_id = var.vpc_id
    tags = var.vpc_tags
}

# nat gateways
resource "aws_nat_gateway" "ngw01" {
    subnet_id = aws_subnet.pubsn01.id
<<<<<<< HEAD
    allocation_id = aws_eip.eip01.id
}
resource "aws_nat_gateway" "ngw02" {
    subnet_id = aws_subnet.pubsn02.id
    allocation_id = aws_eip.eip02.id
=======
}
resource "aws_nat_gateway" "ngw02" {
    subnet_id = aws_subnet.pubsn02.id
>>>>>>> 69f9cb2ec32702618b58453ea9113c8f49e45718
}

# route tables in public subnets
resource "aws_route_table" "pub_route01" {
    vpc_id = var.vpc_id
      route {
<<<<<<< HEAD
    cidr_block = var.pub_routecidr01  #var.pubsn_cidr[0]
=======
    cidr_block = var.pubsn_cidr[0]
>>>>>>> 69f9cb2ec32702618b58453ea9113c8f49e45718
    gateway_id = aws_internet_gateway.igw.id
  }
  tags = var.vpc_tags
}

resource "aws_route_table" "pub_route02" {
    vpc_id = var.vpc_id
      route {
<<<<<<< HEAD
    cidr_block = var.pub_routecidr02 #var.pubsn_cidr[1]
=======
    cidr_block = var.pubsn_cidr[1]
>>>>>>> 69f9cb2ec32702618b58453ea9113c8f49e45718
    gateway_id = aws_internet_gateway.igw.id
  }
  tags = var.vpc_tags
}

# route tables in private subnets
resource "aws_route_table" "priv_route01" {
    vpc_id = var.vpc_id
      route {
<<<<<<< HEAD
    cidr_block =  var.pub_routecidr01  #var.privsn_cidr[0]
    #nat_gateway_id = aws_nat_gateway.ngw01.id
    gateway_id = aws_internet_gateway.igw.id
    
  }

      route {
    ipv6_cidr_block        = "::/0"
    egress_only_gateway_id = aws_egress_only_internet_gateway.eigw.id
=======
    cidr_block = var.privsn_cidr[0]
    gateway_id = aws_internet_gateway.igw.id
>>>>>>> 69f9cb2ec32702618b58453ea9113c8f49e45718
  }
  tags = var.vpc_tags
}

resource "aws_route_table" "priv_route02" {
    vpc_id = var.vpc_id
      route {
<<<<<<< HEAD
    cidr_block =  var.pub_routecidr02  #var.privsn_cidr[0]
    #nat_gateway_id = aws_nat_gateway.ngw01.id
    gateway_id = aws_internet_gateway.igw.id
    
  }

      route {
    ipv6_cidr_block        = "::/0"
    egress_only_gateway_id = aws_egress_only_internet_gateway.eigw.id
=======
    cidr_block = var.privsn_cidr[1]
    gateway_id = aws_internet_gateway.igw.id
>>>>>>> 69f9cb2ec32702618b58453ea9113c8f49e45718
  }
  tags = var.vpc_tags
}

<<<<<<< HEAD

=======
>>>>>>> 69f9cb2ec32702618b58453ea9113c8f49e45718
# public route tables association to public subnets
resource "aws_route_table_association" "pub_rta01" {
    subnet_id = aws_subnet.pubsn01.id
    route_table_id = aws_route_table.pub_route01.id 
}

resource "aws_route_table_association" "pub_rta02" {
    subnet_id = aws_subnet.pubsn02.id
    route_table_id = aws_route_table.pub_route02.id 
}

# private route tables association to private subnets
resource "aws_route_table_association" "priv_rta01" {
    subnet_id = aws_subnet.privsn01.id
    route_table_id = aws_route_table.priv_route01.id 
}

resource "aws_route_table_association" "priv_rta02" {
    subnet_id = aws_subnet.privsn02.id
    route_table_id = aws_route_table.priv_route02.id 
}

<<<<<<< HEAD
# eip creation
resource "aws_eip" "eip01" {
    vpc = true
}

resource "aws_eip" "eip02" {
    vpc = true
}

resource "aws_egress_only_internet_gateway" "eigw" {
    vpc_id = var.vpc_id
}
=======

>>>>>>> 69f9cb2ec32702618b58453ea9113c8f49e45718
