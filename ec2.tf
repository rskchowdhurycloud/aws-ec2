resource "aws_instance" "myawsserver" {
  ami = "ami-0603cbe34fd08cb81"
  instance_type = "t2.nano"
  access_key = "AKIAZ3S6MYW233SUUS5J"
  secret_key = "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"

  tags = {
    Name = "Suresh-Techlanders-aws-ec2-instance-v4 from github"
    Env = "Dev"
  }
}

output "myawsserver-ip" {
  value = aws_instance.myawsserver.public_ip
}

output "myserver-PrivateIP" {
  value = aws_instance.myawsserver.private_ip
}
