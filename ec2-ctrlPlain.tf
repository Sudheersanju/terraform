resource "aws_security_group" "ubuntu_sg" {
  name        = "instance_sg"
  description = "Security group for EC2 instance"

  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  # Add any other inbound rules you require here

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
}

resource "aws_instance" "ubuntu_instance" {
  ami           = "ami-0fcf52bcf5db7b003"  # Replace with your desired AMI
  instance_type = "t2.micro"  # Replace with your desired instance type

  key_name      = ""  # Replace with your key pair name
  vpc_security_group_ids = [aws_security_group.ubuntu_sg.id]

  user_data = <<-EOF
              #!/bin/bash
              
              # Install eksctl
              curl --silent --location "https://github.com/weaveworks/eksctl/releases/latest/download/eksctl_$(uname -s)_amd64.tar.gz" | tar xz -C /tmp
              sudo mv /tmp/eksctl /usr/local/bin
              
              # Install kubectl
              sudo apt-get update
              sudo apt-get install -y ca-certificates curl
              sudo apt-get install -y apt-transport-https
              sudo curl -fsSLo /etc/apt/keyrings/kubernetes-archive-keyring.gpg https://packages.cloud.google.com/apt/doc/apt-key.gpg
              echo "deb [signed-by=/etc/apt/keyrings/kubernetes-archive-keyring.gpg] https://apt.kubernetes.io/ kubernetes-xenial main" | sudo tee /etc/apt/sources.list.d/kubernetes.list
              sudo apt-get update
              sudo apt-get install -y kubectl
              EOF
}

output "instance_public_ip" {
  value = aws_instance.ubuntu_instance.public_ip
}
