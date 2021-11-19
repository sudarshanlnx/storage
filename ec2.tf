resource "aws_instance" "WEBSERVER01" {
  ami           = "ami-0260dee6247a43862"
  instance_type = "t2.micro"
  key_name      = "oct21-wekdays-morning"

  ebs_block_device {
    delete_on_termination = true
    device_name           = "/dev/sdb"
    volume_size           = 1
    volume_type           = "gp2"
  }

  tags = {
    Name = "java-disk"
  }

}
