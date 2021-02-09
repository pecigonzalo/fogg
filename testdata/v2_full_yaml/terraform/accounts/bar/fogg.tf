# Auto-generated by fogg. Do not edit
# Make improvements in fogg, so that everyone can benefit.
provider aws {

  region = "us-west-2"


  assume_role {
    role_arn = "arn:aws:iam::456:role/foo"
  }

  allowed_account_ids = [456]
}
# Aliased Providers (for doing things in every region).


provider aws {
  alias  = "us-east-1"
  region = "us-east-1"


  assume_role {
    role_arn = "arn:aws:iam::456:role/foo"
  }

  allowed_account_ids = [456]
}


provider aws {
  alias  = "us-east-2"
  region = "us-east-2"


  assume_role {
    role_arn = "arn:aws:iam::456:role/foo"
  }

  allowed_account_ids = [456]
}


provider bless {
  region   = "us-west-2"
  role_arn = "arn:aws:iam::1234567890:role/roll"
}
terraform {
  required_version = "=0.100.0"

  backend s3 {

    bucket = "buck"

    key     = "terraform/proj/accounts/bar.tfstate"
    encrypt = true
    region  = "us-west-2"
    profile = "profile"


  }
  required_providers {

    aws = {
      source  = "hashicorp/aws"
      version = "0.12.0"
    }



    bless = {
      source  = "chanzuckerberg/bless"
      version = "0.4.2"
    }








    random = {
      source  = "hashicorp/random"
      version = "~> 2.2"
    }
    template = {
      source  = "hashicorp/template"
      version = "~> 2.2"
    }
    archive = {
      source  = "hashicorp/archive"
      version = "~> 2.0"
    }
    null = {
      source  = "hashicorp/null"
      version = "~> 3.0"
    }
    local = {
      source  = "hashicorp/local"
      version = "~> 2.0"
    }
    tls = {
      source  = "hashicorp/tls"
      version = "~> 3.0"
    }
  }
}
variable env {
  type    = string
  default = "accounts"
}
variable project {
  type    = string
  default = "proj"
}
variable region {
  type    = string
  default = "us-west-2"
}
variable component {
  type    = string
  default = "bar"
}
variable account {
  type    = string
  default = "bar"
}
variable owner {
  type    = string
  default = "foo@example.com"
}
variable tags {
  type = object({ project : string, env : string, service : string, owner : string, managedBy : string })
  default = {
    project   = "proj"
    env       = "accounts"
    service   = "bar"
    owner     = "foo@example.com"
    managedBy = "terraform"
  }
}
variable foo {
  type    = string
  default = "bar1"
}
data terraform_remote_state global {
  backend = "s3"
  config = {


    bucket = "buck"

    key     = "terraform/proj/global.tfstate"
    region  = "us-west-2"
    profile = "profile"


  }
}
data terraform_remote_state bar {
  backend = "s3"
  config = {


    bucket = "buck"

    key     = "terraform/proj/accounts/bar.tfstate"
    region  = "us-west-2"
    profile = "profile"


  }
}
data terraform_remote_state foo {
  backend = "s3"
  config = {


    bucket = "buck"

    key     = "terraform/proj/accounts/foo.tfstate"
    region  = "us-west-2"
    profile = "profile"


  }
}
variable aws_accounts {
  type = map
  default = {

    bar = 456

    foo = 123

  }
}
