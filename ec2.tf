provider "aws" {
  region = "ap-south-1"
}

resource "aws_instance" "my_ec2" {
  ami           = "ami-03f4878755434977f"  # Amazon Linux 2 (for us-east-1)
  instance_type = "t2.micro"
  key_name      = "firstone"     # Replace with your existing key pair name

  tags = {
    Name = "TerraformEC2"
  }
}
