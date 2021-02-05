# Auto-generated by fogg. Do not edit
# Make improvements in fogg, so that everyone can benefit.

provider bless {
  version = "~>0.0.0"
  region  = "bar"
  profile = "foofoofoo"
}
provider bless {
  alias   = "a"
  version = "~>0.0.0"
  region  = "a"

  profile = "foofoofoo"
}
provider bless {
  alias   = "b"
  version = "~>0.0.0"
  region  = "b"

  profile = "foofoofoo"
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
