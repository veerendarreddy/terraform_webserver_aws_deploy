resource "aws_instance" "app" {
  instance_type = "t2.micro"
  availability_zone= "us-east-1a"
   ami             = "ami-0f14f93e52df2ca7f"


   user_data = <<-EOF
               #!/bin/bash
               sudo service apache2 start
               EOF
 }
