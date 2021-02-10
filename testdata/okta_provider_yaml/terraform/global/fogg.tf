# Auto-generated by fogg. Do not edit
# Make improvements in fogg, so that everyone can benefit.

provider okta {
  org_name = "orgname"
  base_url = "oktapreview.com"
}
terraform {
  required_version = "=1.1.1"

  backend s3 {

    bucket = "bucket"

    key     = "terraform/foofoo/global.tfstate"
    encrypt = true
    region  = "region"
    profile = "foofoo"


  }
  required_providers {

    archive = {
      source = "hashicorp/archive"

      version = "~> 2.0"

    }

    local = {
      source = "hashicorp/local"

      version = "~> 2.0"

    }

    null = {
      source = "hashicorp/null"

      version = "~> 3.0"

    }

    okta = {
      source = "oktadeveloper/okta"

      version = "aversion"

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
  default = ""
}
variable project {
  type    = string
  default = "foofoo"
}
variable component {
  type    = string
  default = "global"
}
variable owner {
  type    = string
  default = "foo@example.com"
}
variable tags {
  type = object({ project : string, env : string, service : string, owner : string, managedBy : string })
  default = {
    project   = "foofoo"
    env       = ""
    service   = "global"
    owner     = "foo@example.com"
    managedBy = "terraform"
  }
}
variable aws_accounts {
  type = map
  default = {

  }
}
