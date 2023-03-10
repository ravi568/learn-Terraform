resource "aws_spot_instance_request" "node1" {
  ami           = "ami-079db5741a33d65ee"
  instance_type = "t3.micro"
  vpc_security_group_ids = ["sg-0e9e4460e83575a63"]
  wait_for_fulfillment = true

  tags = {
    Name = "prom-test-server"
  }
}

resource "aws_ec2_tag" "node1" {
  resource_id = aws_spot_instance_request.node1.spot_instance_id
  key         = "Name"
  value       = "prom-test-server"
}


resource "aws_spot_instance_request" "node2" {
  ami           = "ami-079db5741a33d65ee"
  instance_type = "t3.micro"
  vpc_security_group_ids = ["sg-0e9e4460e83575a63"]
  wait_for_fulfillment = true

  tags = {
    Name = "prom-test-node"
  }
}

resource "aws_ec2_tag" "node2" {
  resource_id = aws_spot_instance_request.node2.spot_instance_id
  key         = "Name"
  value       = "prom-test-node"
}
