resource aws_instance "ec2" {
  ami = "ami-03265a0778a880afb"
  instance_type = "t2.micro"
  vpc_security_group_ids = [sg-070745be8c3953392]
  tags = {
    name= 'test'
  }
}