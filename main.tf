# main.tf for basic Terraform config. Assumes that repo is linked to Terraform Cloud
terraform {
  backend "remote" {
    organization = "MITLibraries"

    workspaces {
      name = ""
    }
  }
}
