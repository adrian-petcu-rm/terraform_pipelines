data "aws_ami" "amazon-linux-2-ami" {
  most_recent = true
  owners      = ["amazon"]

  filter {
    name   = "name"
    values = ["amzn2-ami-hvm*"]
  }
}


resource "aws_instance" "prodmachine" {
  ami           = data.aws_ami.amazon-linux-2-ami.id
  instance_type = "t3.micro"

  tags = {
    Name      = "Production-Baby"
    CreatedBy = "Terraform"
  }
}


resource "aws_instance" "prodmachine2" {
  ami           = data.aws_ami.amazon-linux-2-ami.id
  instance_type = "t3.micro"

  tags = {
    Name      = "Production-Baby-777"
    CreatedBy = "Gigi"
  }
}