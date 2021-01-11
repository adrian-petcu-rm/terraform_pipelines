data "aws_ami" "amazon-linux-2-ami" {
  most_recent = true
  owners      = ["amazon"]

  filter {
    name   = "name"
    values = ["amzn2-ami-hvm*"]
  }
}

resource "aws_instance" "test_web" {
  ami           = data.aws_ami.amazon-linux-2-ami.id
  instance_type = "t3.micro"

  tags = {
    Name      = "Test-Machine-4-Da-Web"
    CreatedBy = "Terraform"
  }
}

resource "aws_instance" "test_web2" {
  ami           = data.aws_ami.amazon-linux-2-ami.id
  instance_type = "t3.micro"

  tags = {
    Name      = "Test-Machine-4-Da-Web-666"
    CreatedBy = "Terraform"
  }
}
