terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "4.11.0"
    }
  }
}

variable "aws_access_key" {}
variable "aws_secret_key" {}

provider "aws" {
	region = "ap-south-1"
	access_key = "${var.aws_access_key}"
	secret_key = "${var.aws_secret_key}"  
}
