provider "aws" {

  region  = "us-east-1"
}

# Create a VPC

resource "aws_vpc" "main" {

  cidr_block = "190.60.0.0/16"

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
  cidr_block = "190.60.1.0/24"

  tags = {
    Name = "subnet1"
  }
}

