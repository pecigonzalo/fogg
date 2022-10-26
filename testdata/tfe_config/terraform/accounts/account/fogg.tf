# Auto-generated by fogg. Do not edit
# Make improvements in fogg, so that everyone can benefit.
provider "aws" {

  region = "us-west-2"


  assume_role {
    role_arn = "arn:aws:iam::626314663667:role/tfe-si"
  }

  allowed_account_ids = ["626314663667"]
}
# Aliased Providers (for doing things in every region).

terraform {
  required_version = "=1.1.1"

  backend "remote" {

    hostname     = "si.prod.tfe.czi.technology"
    organization = "shared-infra"
    workspaces {
      name = "accounts-account"
    }

  }
  required_providers {

    archive = {
      source = "hashicorp/archive"

      version = "~> 2.0"

    }

    assert = {
      source = "bwoznicki/assert"

      version = "~> 0.0.1"

    }

    aws = {
      source = "hashicorp/aws"

      version = "3.63.0"

    }

    local = {
      source = "hashicorp/local"

      version = "~> 2.0"

    }

    null = {
      source = "hashicorp/null"

      version = "3.1.1"

    }

    okta-head = {
      source = "okta/okta"

      version = "~> 3.30"

    }

    random = {
      source = "hashicorp/random"

      version = "~> 3.4"

    }

    tls = {
      source = "hashicorp/tls"

      version = "~> 3.0"

    }

  }
}
variable "env" {
  type    = string
  default = "accounts"
}
variable "project" {
  type    = string
  default = "foo"
}
variable "region" {
  type    = string
  default = "us-west-2"
}
variable "component" {
  type    = string
  default = "account"
}
variable "account" {
  type    = string
  default = "account"
}
variable "owner" {
  type    = string
  default = "foo@example.com"
}
variable "tags" {
  type = object({ project : string, env : string, service : string, owner : string, managedBy : string })
  default = {
    project   = "foo"
    env       = "accounts"
    service   = "account"
    owner     = "foo@example.com"
    managedBy = "terraform"
  }
}
data "terraform_remote_state" "global" {
  backend = "remote"
  config = {


    hostname     = "si.prod.tfe.czi.technology"
    organization = "shared-infra"
    workspaces = {
      name = "global"
    }

  }
}
data "terraform_remote_state" "account" {
  backend = "remote"
  config = {


    hostname     = "si.prod.tfe.czi.technology"
    organization = "shared-infra"
    workspaces = {
      name = "accounts-account"
    }

  }
}
variable "aws_accounts" {
  type = map(string)
  default = {

  }
}
