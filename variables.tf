# Sets the default AWS region  
variable "aws_region" {
  description = "The AWS region where this infrastructure will be deployed."
  type        = string
  default     = "us-east-1"
}

# The following variables are used for consistent naming of repositories and workspaces 
# as well as for consistent locations for sensitive values store in SSM.
# Values for these are set in Terrafaorm Cloud workspaces by the mitlib-tfc-mgmt
# repository.

variable "mitlib" {
  description = "The shortname name of our MITLibraries Organization"
  type        = string
  default     = "mitlib"
}

variable "ou" {
  description = "The name of the AWS OU that contains the AWS Accounts that are managed by this code."
  type        = string
}

variable "name" {
  description = "The name of the app/resource this code builds"
  type        = string
}

variable "environment" {
  description = "The name of the environment/stage/workspace (e.g., `stage`, `prod`, `dev`)"
  type        = string
}

variable "ssm_path" {
  description = "The SSM (Parameter Store) path where secrets are written/retrieved."
  type        = string
}
