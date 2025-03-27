resource "aws_instance" "public_ec2" {
  ami                    = "ami-076c6dbba59aa92e6"
  instance_type           = "t2.micro"
  key_name               = "jenkins27"
  availability_zone      = "ap-south-1a"
  tags = {
    Name = "Anurag_public"
  }
}
