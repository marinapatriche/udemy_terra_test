terraform {
  backend "remote" {
    hostname     = "app.terraform.io"
    organization = "TestORG-12345"

    workspaces {
      name = "udemy_terra_test"
    }
  }
}

provider "aws" {
  region     = "eu-central-1"
  access_key = var.access_key
  secret_key = var.secret_key
}

resource "aws_s3_bucket" "test" {
  bucket_prefix = "test-"
}