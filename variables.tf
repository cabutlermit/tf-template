  # The following variables are used to build consistent names for repositories and workspaces 
  # in the following format:
  #  GH repo name = <mitlib>-tf-<org>-<name>
  #  TfC workspace = <org>-<name>-<environment>

  variable "mitlib" {
    description = "The shortname name of our MITLibraries Organization"
    type        = string
    default = "mitlib"
  }

  variable "ou" {
    description = "The name of the AWS OU that contains the AWS Accounts that are managed by this code."
    type = string
  }

  variable "name" {
    description = "The name of the app/resource this repo builds"
    type        = string
  }

  variable "environment" {
    description = "The name of the environment/stage/workspace (e.g., `stage`, `prod`, `dev`)"
    type = string
  }

variable "aws_region" {
  description = "The AWS region where this infrastructure will be deployed."
  type = string
  default = "us-east-1"
}
