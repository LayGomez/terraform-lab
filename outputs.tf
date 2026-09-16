# outputs.tf

output "instance_id" {
  description = "ID de la instancia EC2"
  value       = aws_instance.web.id
}

output "public_ip" {
  description = "IP pública asignada"
  value       = aws_instance.web.id
}

output "ami_usada" {
  description = "AMI seleccionada automaticamente por el data source"
  value       = data.aws_ami.amazon_linux.id
}
