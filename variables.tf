# variables.tf

variable "aws_region" {
  description = "Región de AWS"
  type        = string
  default     = "eu-west-1"
}

variable "instance-type" {
  description = "Tipo de instancia EC2 (usa t2.micro para Free Tier)"
  type = string
  default = "t2.micro"
}

variable "nombre_proyecto" {
  description = "Prefijo para las etiquetas de los recursos"
  type = string
  default = "terraform-lab"
}