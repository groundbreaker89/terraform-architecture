# Pulls information from another workspace
data "terraform_remote_state" "vpc" {
  backend = "remote"

  config = {
    organization = "grounbreaker89"
    workspaces = {
      name = "vpc"
    }
  }
}


# Creates subnet group with private subnets
resource "aws_db_subnet_group" "default" {
  name       = "main"
  subnet_ids = [
    data.terraform_remote_state.vpc.outputs.private_subnets
  ]
}