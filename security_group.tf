resource "aws_security_group" "tfer--My-0020-First-0020-Template_sg-01bf0f8245df9b499" {
  description = "Allow access to all Devs"

  egress {
    cidr_blocks = ["0.0.0.0/0"]
    from_port   = "0"
    protocol    = "-1"
    self        = "false"
    to_port     = "0"
  }

  ingress {
    cidr_blocks = ["3.108.217.22/32"]
    description = "allow port for jenkins integration"
    from_port   = "5601"
    protocol    = "tcp"
    self        = "false"
    to_port     = "5601"
  }

  ingress {
    cidr_blocks = ["3.108.217.22/32"]
    description = "allow port for jenkins integration"
    from_port   = "8080"
    protocol    = "tcp"
    self        = "false"
    to_port     = "8080"
  }
  
  ingress {
    cidr_blocks = ["3.108.217.22/32"]
    description = "allow port for jenkins integration"
    from_port   = "9000"
    protocol    = "tcp"
    self        = "false"
    to_port     = "9000"
  }

  ingress {
    cidr_blocks = ["42.105.107.23/32"]
    from_port   = "22"
    protocol    = "tcp"
    self        = "false"
    to_port     = "22"
  }

  ingress {
    cidr_blocks = ["42.105.107.23/32"]
    from_port   = "3389"
    protocol    = "tcp"
    self        = "false"
    to_port     = "3389"
  }

  ingress {
    cidr_blocks = ["42.105.107.23/32"]
    from_port   = "443"
    protocol    = "tcp"
    self        = "false"
    to_port     = "443"
  }

  ingress {
    cidr_blocks = ["42.105.107.23/32"]
    from_port   = "5002"
    protocol    = "tcp"
    self        = "false"
    to_port     = "5002"
  }

  ingress {
    cidr_blocks = ["42.105.107.23/32"]
    from_port   = "53"
    protocol    = "tcp"
    self        = "false"
    to_port     = "53"
  }

  ingress {
    cidr_blocks = ["42.105.107.23/32"]
    from_port   = "5432"
    protocol    = "tcp"
    self        = "false"
    to_port     = "5432"
  }
  
  {
    cidr_blocks      = []
    description      = "this is security group changes"
    from_port        = 80
    ipv6_cidr_blocks = []
    prefix_list_ids  = []
    protocol         = "tcp"
    security_groups  = [
    "sg-025b807a84b7b1f7f"
            ]
    self             = false
    to_port          = 80
        }

  ingress {
    cidr_blocks = ["42.105.107.23/32"]
    from_port   = "80"
    protocol    = "tcp"
    self        = "false"
    to_port     = "80"
  }

  ingress {
    cidr_blocks = ["42.105.107.23/32"]
    from_port   = "9090"
    protocol    = "tcp"
    self        = "false"
    to_port     = "9090"
  }

    ingress {
    cidr_blocks = ["42.111.107.23/32"]
    from_port   = "8000"
    protocol    = "tcp"
    self        = "false"
    to_port     = "8000"
  }

  ingress {
    cidr_blocks = ["42.105.57.23/32"]
    from_port   = "10058"
    protocol    = "tcp"
    self        = "false"
    to_port     = "10058"
  }

  name = "My First Template"

  tags = {
    Name = "terraform-ref"
  }

  tags_all = {
    Name = "terraform-ref"
  }

  vpc_id = "vpc-05635a703bbead1f2"
}

resource "aws_security_group" "tfer--default_sg-025b807a84b7b1f7f" {
  description = "default VPC security group"

  egress {
    cidr_blocks = ["0.0.0.0/0"]
    from_port   = "0"
    protocol    = "-1"
    self        = "false"
    to_port     = "0"
  }

  ingress {
    cidr_blocks = ["0.0.0.0/0"]
    from_port   = "0"
    protocol    = "-1"
    self        = "false"
    to_port     = "0"
  }

  name   = "default"
  vpc_id = "vpc-05635a703bbead1f2"
}
