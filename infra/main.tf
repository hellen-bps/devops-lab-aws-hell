//CRIAR AMBIENTE DO ZERO



//CREATING vpc
resource "aws_vpc" "test" {
  cidr_block = "10.1.0.0/16"
}

//CREATING ROUT TABLE FOR VPC
resource "aws_route_table" "test" {
  vpc_id = aws_vpc.test.id

//ADICIONANDO ROTA À ROUT TABLE DA VPC
//DESTINATION
//TARGET
  route {
    cidr_block           = aws_vpc.test.cidr_block
    gateway_id = "local"
  }
}

//CREATING SUBNET
resource "aws_subnet" "test" {
  cidr_block = "10.1.1.0/24"
  vpc_id     = aws_vpc.test.id
}


//================================================

//CREATING EC2