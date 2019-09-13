#criando bucket
#AWS emUS-East-Ohio

provider "aws" {
region = "us-east-1"

}

resource "aws_s3_bucket" “example2" {

bucket = "testeexecfinal-impcta2019" 
}

resource "aws_instance" "webserver" {
ami = "ami-0b89804080385065"
instance_type = "t2.micro"
}

resource "aws_instance" "webserver2" {
ami = "ami-0b89804080385065"
instance_type = "t2.micro"
}


resource "aws_vpc" "main" {

cidr_block = "10.0.0.0/16"

instance_tenancy = "dedicated"

tags = {

Name = "main"

}

}