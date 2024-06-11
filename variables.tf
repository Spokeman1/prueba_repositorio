

# variables.tf

variable "aws_region" {
  description = "La región de AWS a utilizar"
  default     = "us-east-1"
}

variable "ami_id" {
  description = "ID de la AMI para la instancia EC2"
  default     = "ami-0c55b159cbfafe1f0"  # AMI de Amazon Linux 2
}

variable "instance_type" {
  description = "El tipo de instancia EC2 a utilizar"
  default     = "t2.micro"
}

variable "ssh_public_key" {
  description = "Ruta a la clave pública SSH"
  default     = "~/.ssh/id_rsa.pub"
}
