terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = ">= 4.30"
    }
  }
  required_version = ">= 1.0.0"
}