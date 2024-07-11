terraform {

  required_providers {
    octopusdeploy = { source = "OctopusDeployLabs/octopusdeploy", version = "0.21.1" }
  }

  backend "s3" {
  }

  required_version = ">= 1.6.0"
}
