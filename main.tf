# BrainBoard generated file.

resource "aws_network_interface" "aws_network_interface-1fd5b0a9" {
  provider = aws.eu-central-1

  subnet_id = aws_subnet.aws_subnet-1e6b193f.id

  private_ips = [
    "172.16.10.100",
  ]

  tags = {
    env      = "test"
    archUUID = "1345ae73-6502-4f3a-8428-c3c03c881018"
  }
}

resource "aws_instance" "t3a-4d5ef151" {
  provider = aws.eu-central-1

  subnet_id         = aws_subnet.aws_subnet-1e6b193f.id
  instance_type     = "t3a.medium"
  availability_zone = "eu-central-1b"
  ami               = "ami-0fa8116668906c394"
}

resource "aws_vpc" "aws_vpc-57903e63" {
  provider = aws.eu-central-1

  enable_dns_hostnames = true
  cidr_block           = "172.16.0.0/16"

  tags = {
    env      = "test"
    archUUID = "1345ae73-6502-4f3a-8428-c3c03c881018"
  }
}

resource "aws_subnet" "aws_subnet-1e6b193f" {
  provider = aws.eu-central-1

  vpc_id            = aws_vpc.aws_vpc-57903e63.id
  cidr_block        = "172.16.10.0/24"
  availability_zone = "eu-central-1b"

  tags = {
    archUUID = "1345ae73-6502-4f3a-8428-c3c03c881018"
    env      = "test"
  }
}