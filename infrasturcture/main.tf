# AWS provider
provider "aws" {
  region = "us-east-1"
}

resource "aws_instance" "test"{
    ami                         = "ami-062f7200baf2fa504"
    instance_type               = "t2.micro"
    ebs_optimized               = false
    key_name                    = "sushantkeypair"
    associate_public_ip_address = true
    root_block_device {
        volume_type           = "gp2"
        volume_size           = "20"
        delete_on_termination = "false"
    }

}


