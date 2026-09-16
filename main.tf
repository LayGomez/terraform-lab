#main.tf

# Data source: obtiene la AMI más reciente de Amazon Linux 2023

data "aws_ami" "amazon_linux" {
  most_recent = true
  owners      = ["amazon"]

  filter {
    name   = "name"
    values = [al2023-ami-*-x86_64]
  }
}

# Recurso: instancia EC2

resource "aws_instance" "web" {
  ami           = data.aws_ami.amazon_linux.id
  instance_type = var.instance-type

  tags = {
    Name       = "${var.nombre_proyecto}-web"
    Enviroment = "dev"
    ManagedBy  = "Terraform"
  }
}
