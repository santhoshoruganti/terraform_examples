provider "aws" {

  region  = "{var.region}"
}

# Create a VPC

resource "aws_vpc" "main" {

  cidr_block = "${var.vpc_cidr}"

  instance_tenancy = "default"


   tags = {
    Name = "main"
    Location="Vizag"
  }

}


# Create a Subnet

resource "aws_subnet" "subnet1"{
	
	# This is called as Interpollation where we can get values dynamically 
	
	vpc_id     = "${aws_vpc.main.id}"
  cidr_block = "${var.subnet_cidr}"

  tags = {
    Name = "subnet1"
  }
}

