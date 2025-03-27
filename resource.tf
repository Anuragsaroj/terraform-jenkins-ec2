resource "aws_instance" "public_ec2" {
  ami                    = "ami-0e35ddab05955cf57"
  instance_type           = "t2.micro"
  key_name               = "jenkins27"
  availability_zone      = "ap-south-1a"
  tags = {
    Name = "Anurag_public"
  }
}
