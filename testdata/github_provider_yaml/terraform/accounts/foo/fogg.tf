# Auto-generated by fogg. Do not edit
# Make improvements in fogg, so that everyone can benefit.

provider "github" {
  organization = "foo"
  base_url     = "https://example.com/"
}
terraform {
  required_version = "=1.1.1"

  backend "s3" {

    bucket = "bucket"

    key     = "terraform/foo/accounts/foo.tfstate"
    encrypt = true
    region  = "region"
    profile = "foo"


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

    github = {
      source = "integrations/github"

    }

    local = {
      source = "hashicorp/local"

      version = "~> 2.0"

    }

    null = {
      source = "hashicorp/null"

      version = "~> 3.0"

    }

    okta-head = {
      source = "okta/okta"

      version = "~> 3.30"

    }

    random = {
      source = "hashicorp/random"

      version = "~> 2.2"

    }

    template = {
      source = "hashicorp/template"

      version = "~> 2.2"

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
variable "component" {
  type    = string
  default = "foo"
}
variable "account" {
  type    = string
  default = "foo"
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
    service   = "foo"
    owner     = "foo@example.com"
    managedBy = "terraform"
  }
}
data "terraform_remote_state" "global" {
  backend = "s3"
  config = {


    bucket = "bucket"

    key     = "terraform/foo/global.tfstate"
    region  = "region"
    profile = "foo"


  }
}
data "terraform_remote_state" "foo" {
  backend = "s3"
  config = {


    bucket = "bucket"

    key     = "terraform/foo/accounts/foo.tfstate"
    region  = "region"
    profile = "foo"


  }
}
variable "aws_accounts" {
  type = map(string)
  default = {

  }
}
