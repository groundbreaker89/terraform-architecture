# Pulls information from vpc workspace
data "terraform_remote_state" "vpc" {
  backend = "remote"

  config = {
    organization = "grounbreaker89"
    workspaces = {
      name = "vpc"
    }
  }
}



# Pulls information from rds workspace
data "terraform_remote_state" "rds" {
  backend = "remote"

  config = {
    organization = "grounbreaker89"
    workspaces = {
      name = "rds"
    }
  }
}
