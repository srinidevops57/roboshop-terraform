data "aws_security_group" "allw-all"{
  name = "allw-all"
}

resource "aws_instance" "web" {
  ami           = "ami-03265a0778a880afb"
  instance_type = "t3.micro"
vpc_security_group_ids = [data.aws_security_group.allw-all.id]
  tags = {
    Name = "web"
  }
}
output "web" {
value = aws_instance.web.public_ip
}
resource "aws_instance" "mongodb" {
  ami           = "ami-03265a0778a880afb"
  instance_type = "t3.micro"
  vpc_security_group_ids = [data.aws_security_group.allw-all.id]
  tags = {
    Name = "mongodb"
  }
}
output "mongodb" {
value = aws_instance.mongodb.public_ip
}
resource "aws_instance" "frontend" {
  ami           = "ami-03265a0778a880afb"
  instance_type = "t3.micro"
  vpc_security_group_ids = [data.aws_security_group.allw-all.id]
  tags = {
    Name = "frontend"
  }
}
output "frontend" {
value = aws_instance.frontend.public_ip
}
resource "aws_instance" "catalog" {
  ami           = "ami-03265a0778a880afb"
  instance_type = "t3.micro"
  vpc_security_group_ids = [data.aws_security_group.allw-all.id]
  tags = {
    Name = "catalog"
  }
}
resource "aws_instance" "user" {
  ami           = "ami-03265a0778a880afb"
  instance_type = "t3.micro"
  vpc_security_group_ids = [data.aws_security_group.allw-all.id]
  tags = {
    Name = "user"
  }
}
resource "aws_instance" "cart" {
  ami           = "ami-03265a0778a880afb"
  instance_type = "t3.micro"
  vpc_security_group_ids = [data.aws_security_group.allw-all.id]
  tags = {
    Name = "cart"
  }
}
resource "aws_instance" "mysql" {
  ami           = "ami-03265a0778a880afb"
  instance_type = "t3.micro"
  vpc_security_group_ids = [data.aws_security_group.allw-all.id]
  tags = {
    Name = "mysql"
  }
}
resource "aws_instance" "shipping" {
  ami           = "ami-03265a0778a880afb"
  instance_type = "t3.micro"
  vpc_security_group_ids = [data.aws_security_group.allw-all.id]
  tags = {
    Name = "shipping"
  }
}
resource "aws_instance" "rabbitmq" {
  ami           = "ami-03265a0778a880afb"
  instance_type = "t3.micro"
  vpc_security_group_ids = [data.aws_security_group.allw-all.id]
  tags = {
    Name = "rabbitmq"
  }
}
resource "aws_instance" "payment" {
  ami           = "ami-03265a0778a880afb"
  instance_type = "t3.micro"
  vpc_security_group_ids = [data.aws_security_group.allw-all.id]
  tags = {
    Name = "payment"
  }
}
resource "aws_instance" "redis" {
  ami           = "ami-03265a0778a880afb"
  instance_type = "t3.micro"
  vpc_security_group_ids = [data.aws_security_group.allw-all.id]
  tags = {
    Name = "redis"
  }
}