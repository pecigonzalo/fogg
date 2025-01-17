# Auto-generated by fogg. Do not edit
# Make improvements in fogg, so that everyone can benefit.
provider "aws" {

  region  = "us-west-2"
  profile = "profile"

  allowed_account_ids = ["00456"]
}
# Aliased Providers (for doing things in every region).


provider "okta" {
  org_name = "foo"
  base_url = "https://foo.okta.com/"
}
terraform {
  required_version = "=0.100.0"

  backend "s3" {

    bucket = "buck"

    key     = "terraform/proj/envs/prod/components/okta.tfstate"
    encrypt = true
    region  = "us-west-2"
    profile = "profile"


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

      version = "0.12.0"

    }

    local = {
      source = "hashicorp/local"

      version = "~> 2.0"

    }

    null = {
      source = "hashicorp/null"

      version = "3.1.1"

    }

    okta = {
      source = "acme/okta"

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
  default = "prod"
}
variable "project" {
  type    = string
  default = "proj"
}
variable "region" {
  type    = string
  default = "us-west-2"
}
variable "component" {
  type    = string
  default = "okta"
}
variable "aws_profile" {
  type    = string
  default = "profile"
}
variable "owner" {
  type    = string
  default = "foo@example.com"
}
variable "tags" {
  type = object({ project : string, env : string, service : string, owner : string, managedBy : string })
  default = {
    project   = "proj"
    env       = "prod"
    service   = "okta"
    owner     = "foo@example.com"
    managedBy = "terraform"
  }
}
variable "foo" {
  type    = string
  default = "bar1"
}
data "terraform_remote_state" "global" {
  backend = "s3"
  config = {


    bucket = "buck"

    key     = "terraform/proj/global.tfstate"
    region  = "us-west-2"
    profile = "profile"


  }
}
data "terraform_remote_state" "datadog" {
  backend = "s3"
  config = {


    bucket = "buck"

    key     = "terraform/proj/envs/prod/components/datadog.tfstate"
    region  = "us-west-2"
    profile = "profile"


  }
}
data "terraform_remote_state" "hero" {
  backend = "s3"
  config = {


    bucket = "buck"

    key     = "terraform/proj/envs/prod/components/hero.tfstate"
    region  = "us-west-2"
    profile = "profile"


  }
}
data "terraform_remote_state" "sentry" {
  backend = "s3"
  config = {


    bucket = "buck"

    key     = "terraform/proj/envs/prod/components/sentry.tfstate"
    region  = "us-west-2"
    profile = "profile"


  }
}
data "terraform_remote_state" "vpc" {
  backend = "s3"
  config = {


    bucket = "buck"

    key     = "terraform/proj/envs/prod/components/vpc.tfstate"
    region  = "us-west-2"
    profile = "profile"


  }
}
data "terraform_remote_state" "bar" {
  backend = "s3"
  config = {


    bucket = "buck"

    key     = "terraform/proj/accounts/bar.tfstate"
    region  = "us-west-2"
    profile = "profile"


  }
}
data "terraform_remote_state" "foo" {
  backend = "s3"
  config = {


    bucket = "buck"

    key     = "terraform/proj/accounts/foo.tfstate"
    region  = "us-west-2"
    profile = "profile"


  }
}
variable "aws_accounts" {
  type = map(string)
  default = {

    bar = "00456"

    foo = "123"

  }
}
