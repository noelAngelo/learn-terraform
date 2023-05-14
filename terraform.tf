terraform {

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.28.0"
    }
  }

  cloud {
    organization = "noelzy"

    workspaces {
      name = "learn-terraform-cloud"
    }
  }



  required_version = ">= 0.14.0"
}
