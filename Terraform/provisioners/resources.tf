resource "aws_instance" "ec2" {
  ami                         = "ami-08c40ec9ead489470"
  instance_type               = "t2.micro"
  key_name                    = aws_key_pair.key.key_name
  associate_public_ip_address = true

  tags = {
    "Name" = "devops-vm"
  }
}

resource "aws_key_pair" "key" {
  key_name   = "aws_tf_key"
  public_key = file("./ec2-key.pub")
}