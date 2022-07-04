resource "aws_instance" "example" {
  ami           = var.AMIS[var.AWS_REGION]
  instance_type = "t2.micro"
  provisioner "local-exec" {
    command = "echo ${aws_instance.example.private_ip} >> private_ips.txt"
    interpreter=["bash", "-c"]
    working_dir=path.module
  }
}

output "ip" {
  value = aws_instance.example.public_ip
}

