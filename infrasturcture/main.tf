# AWS provider
provider "aws" {
  region = "us-east-1"
}

resource "aws_instance" "test"{
    ami                         = "ami-03caa3f860895f82e"
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


