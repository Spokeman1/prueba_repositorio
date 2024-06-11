

# main.tf

# Proveedor de AWS
provider "aws" {
  region = var.aws_region
}

# Recurso de clave SSH
resource "aws_key_pair" "deployer_key" {
  key_name   = "deployer_key"
  public_key = file(var.ssh_public_key)
}

# Recurso de instancia EC2
resource "aws_instance" "web_server" {
  ami           = var.ami_id
  instance_type = var.instance_type

  # Clave SSH
  key_name = aws_key_pair.deployer_key.key_name

  # Etiquetas para identificar la instancia
  tags = {
    Name = "Terraform-Example"
  }
}
