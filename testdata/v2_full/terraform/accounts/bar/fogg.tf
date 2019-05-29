# Auto-generated by fogg. Do not edit
# Make improvements in fogg, so that everyone can benefit.

# Default Provider
provider "aws" {
  version             = "~> 0.12.0"
  region              = "us-west-2"
  profile             = "profile"
  allowed_account_ids = [456]
}

# Aliased Providers (for doing things in every region).

terraform {
  required_version = "=0.100.0"

  backend "s3" {
    bucket = "buck"

    key     = "terraform/proj/accounts/bar.tfstate"
    encrypt = true
    region  = "us-west-2"
    profile = "profile"
  }
}

variable "project" {
  type    = "string"
  default = "proj"
}

variable "region" {
  type    = "string"
  default = "us-west-2"
}

variable "aws_profile" {
  type    = "string"
  default = "profile"
}

variable "owner" {
  type    = "string"
  default = "foo@example.com"
}

variable "aws_accounts" {
  type = "map"

  default = {
    bar = 456

    foo = 123
  }
}

variable "foo" {
  type    = "string"
  default = "bar1"
}

data "terraform_remote_state" "global" {
  backend = "s3"

  config {
    bucket = "buck"

    key     = "terraform/proj/global.tfstate"
    region  = "us-west-2"
    profile = "profile"
  }
}
