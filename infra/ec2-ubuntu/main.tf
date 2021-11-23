terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.27"
    }
  }

  required_version = ">= 0.14.9"
}

provider "aws" {
  profile = "default"
  region  = "us-east-2"
}

resource "aws_instance" "example" {
  ami           = "ami-0b9064170e32bde34"
  instance_type = "t2.micro"

  user_data = <<-EOF
              #!/bin/bash
              echo "Hello, CS302" > index.html
              nohup busybox httpd -f -p 8080 & 
              EOF

  vpc_security_group_ids = [aws_security_group.terraform_example.id]

  tags = {
    Name = "TerraformExample"
  }
}

resource "aws_security_group" "terraform_example" {
	name = "terraform_example"
	
	ingress {
		from_port = 8080
		to_port = 8080
		protocol = "tcp"
		cidr_blocks = ["0.0.0.0/0"]
	}
}
