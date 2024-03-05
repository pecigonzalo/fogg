# Auto-generated by fogg. Do not edit
# Make improvements in fogg, so that everyone can benefit.
variable "TFC_RUN_ID" {
  type    = string
  default = "unknown"
}
variable "TFC_WORKSPACE_NAME" {
  type    = string
  default = "unknown"
}
variable "TFC_WORKSPACE_SLUG" {
  type    = string
  default = "unknown"
}
variable "TFC_CONFIGURATION_VERSION_GIT_BRANCH" {
  type    = string
  default = "unknown"
}
variable "TFC_CONFIGURATION_VERSION_GIT_COMMIT_SHA" {
  type    = string
  default = "unknown"
}
variable "TFC_CONFIGURATION_VERSION_GIT_TAG" {
  type    = string
  default = "unknown"
}
variable "TFC_PROJECT_NAME" {
  type    = string
  default = "unknown"
}
provider "aws" {

  region = "us-west-2"


  assume_role {
    role_arn = "arn:aws:iam::626314663667:role/tfe-si"
  }

  # this is the new way of injecting AWS tags to all AWS resources
  # var.tags should be considered deprecated
  default_tags {
    tags = {
      TFC_RUN_ID                               = coalesce(var.TFC_RUN_ID, "unknown")
      TFC_WORKSPACE_NAME                       = coalesce(var.TFC_WORKSPACE_NAME, "unknown")
      TFC_WORKSPACE_SLUG                       = coalesce(var.TFC_WORKSPACE_SLUG, "unknown")
      TFC_CONFIGURATION_VERSION_GIT_BRANCH     = coalesce(var.TFC_CONFIGURATION_VERSION_GIT_BRANCH, "unknown")
      TFC_CONFIGURATION_VERSION_GIT_COMMIT_SHA = coalesce(var.TFC_CONFIGURATION_VERSION_GIT_COMMIT_SHA, "unknown")
      TFC_CONFIGURATION_VERSION_GIT_TAG        = coalesce(var.TFC_CONFIGURATION_VERSION_GIT_TAG, "unknown")
      TFC_PROJECT_NAME                         = coalesce(var.TFC_PROJECT_NAME, "unknown")
      project                                  = coalesce(var.tags.project, "unknown")
      env                                      = coalesce(var.tags.env, "unknown")
      service                                  = coalesce(var.tags.service, "unknown")
      owner                                    = coalesce(var.tags.owner, "unknown")
      managedBy                                = "terraform"
    }
  }
  allowed_account_ids = ["626314663667"]
}
# Aliased Providers (for doing things in every region).


provider "assert" {}
terraform {
  required_version = "=1.1.1"

  backend "remote" {

    hostname     = "si.prod.tfe.czi.technology"
    organization = "shared-infra"
    workspaces {
      name = "global"
    }

  }
  required_providers {

    archive = {
      source = "hashicorp/archive"

      version = "~> 2.0"

    }

    assert = {
      source = "bwoznicki/assert"

      version = "0.0.1"

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

      version = "> 3.30"

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
# tflint-ignore: terraform_unused_declarations
variable "env" {
  type    = string
  default = ""
}
# tflint-ignore: terraform_unused_declarations
variable "project" {
  type    = string
  default = "foo"
}
# tflint-ignore: terraform_unused_declarations
variable "region" {
  type    = string
  default = "us-west-2"
}
# tflint-ignore: terraform_unused_declarations
variable "component" {
  type    = string
  default = "global"
}
# tflint-ignore: terraform_unused_declarations
variable "owner" {
  type    = string
  default = "foo@example.com"
}
# tflint-ignore: terraform_unused_declarations
# DEPRECATED: this field is deprecated in favor or 
# AWS provider default tags.
variable "tags" {
  type = object({ project : string, env : string, service : string, owner : string, managedBy : string })
  default = {
    project   = "foo"
    env       = ""
    service   = "global"
    owner     = "foo@example.com"
    managedBy = "terraform"
  }
}
# tflint-ignore: terraform_unused_declarations
variable "aws_accounts" {
  type = map(string)
  default = {

  }
}
