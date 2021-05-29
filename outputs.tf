output "pubsn01_id" {
    value = aws_subnet.pubsn01.id
}

output "pubsn02_id" {
    value = aws_subnet.pubsn02.id
}

output "privsn01_id" {
    value = aws_subnet.privsn01.id
}

output "privsn02_id" {
    value = aws_subnet.privsn02.id
}

output "igw_id" {
    value = aws_internet_gateway.igw.id
}

output "pubsn01_route_table_id" {
    value = aws_route_table.pub_route01.id
  
}

output "pubsn02_route_table_id" {
    value = aws_route_table.pub_route02.id
  
}

output "privsn01_route_table_id" {
    value = aws_route_table.priv_route01.id
  
}

output "privsn02_route_table_id" {
    value = aws_route_table.priv_route02.id
  
}