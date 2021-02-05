# Auto-generated by fogg. Do not edit
# Make improvements in fogg, so that everyone can benefit.
terraform {
  required_version = "=1.1.1"

  backend s3 {

    bucket = "bucket"

    key     = "terraform/foo/global.tfstate"
    encrypt = true
    region  = "region"
    profile = "foo"


  }
}
variable env {
  type    = string
  default = ""
}
variable project {
  type    = string
  default = "foo"
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
    project   = "foo"
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
provider random {
  version = "~> 2.2"
}
provider template {
  version = "~> 2.2"
}
provider archive {
  version = "~> 2.0"
}
provider null {
  version = "~> 3.0"
}
provider local {
  version = "~> 2.0"
}
provider tls {
  version = "~> 3.0"
}
