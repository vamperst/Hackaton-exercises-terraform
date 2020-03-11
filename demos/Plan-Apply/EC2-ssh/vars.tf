
variable "AWS_REGION" {
  default = "us-east-1"
}
variable "AMIS" {
  type = map(string)
  default = {
    us-east-1 = "ami-13be557e"
    us-west-2 = "ami-06b94666"
    eu-west-1 = "ami-844e0bf7"
  }
}

variable "KEY_NAME" {
  default = "fiap-lab"
}
variable "PATH_TO_KEY" {
  default = "/home/ubuntu/.ssh/fiap-lab.pem"
}
variable "INSTANCE_USERNAME" {
  default = "ubuntu"
}
