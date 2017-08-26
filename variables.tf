variable "aws_region" {
    description = "EC2 Region for the VPC"
    default = "ap-southeast-1"
}

variable "azs" {
 description = "List of AZs available in the region of choice."
 default = [ "ap-southeast-1a","ap-southeast-1b" ]
}

variable "aws_access_key" {
 default = ""
}

variable "aws_secret_key" {
 default = ""
}

variable "aws_key_path" {
   default = "/Users/monkey/Development/AWS/keys/ec2sin1.pem"
}

variable "aws_key_name" {
   default = "ec2sin1"
}

variable "public_subnets" {
  default = [ "10.0.0.0/24", "10.0.1.0/24" ]
}

variable "vpc_cidr" {
    description = "CIDR for the whole VPC"
    default = "10.0.0.0/16"
}

variable "public_subnet_cidr" {
    description = "CIDR for the Public Subnet"
    default = "10.0.0.0/24"
}

variable "private_subnet_cidr" {
    description = "CIDR for the Private Subnet"
    default = "10.0.1.0/24"
}

variable "ami" {
    description = "AWS ECS AMI id"
    default = {
        us-east-1 = "ami-cb2305a1"
        us-west-1 = "ami-bdafdbdd"
        us-west-2 = "ami-ec75908c"
        eu-west-1 = "ami-13f84d60"
        eu-central-1 =  "ami-c3253caf"
        ap-northeast-1 = "ami-e9724c87"
        ap-southeast-1 = "ami-5f31fd3c"
        ap-southeast-2 = "ami-83af8ae0"
    }
}
