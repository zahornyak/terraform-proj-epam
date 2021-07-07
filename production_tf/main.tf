provider "aws" {
  region = "eu-central-1"
}

terraform {
  backend "s3" {
    bucket = "terraform-state-epam"
    key    = "production.tfstate"
    region = "eu-central-1"
  }
}

terraform {
  required_version = ">= v0.14.4"
}