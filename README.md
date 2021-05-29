# terraform-lab


Network module
--vpc
--internet gateway (reference vpc)
--public subnets (az1, az2) (reference vpc)
--private subnets (az1, az2) (reference vpc)
--public route tables (az1, az2) (reference vpc)
--private route tables (az1, az2) (reference vpc)
--public route tables to public subnets association
--private route tables to private subnets association
--add public natgateways 1 & 2 to public route tables 1 & 2
--add private routes tables 1 & 2 to public route tables 1 & 2

Compute module
--ElasticIP in public subnets 1 & 2 (az1, az2) (depends on internet gateway)
--2 ec2 instances in private subnet 1, az1
--2 ec2 instances in private subnet 2, az2
--1 ec2 instance in public subnet 1, az1
--1 ec2 instance in public subnet 1, az2

S3 module
--s3 in the vpc only

Autoscaling group module
--launch template for private subnet 1, az1 (reference ec2 instances in private subnet 1, az1) [include user data]
--launch template for private subnet 2, az2 (reference ec2 instances in private subnet 2, az2) [include user data]
--autoscaling group in private subnet 1, az1 (reference launch template in private subnet 1, az1)
--autoscaling group in private subnet 2, az2 (reference launch template in private subnet 2, az2)

Load balanacer module
--target group (reference public subnets 1 & 2)
--
