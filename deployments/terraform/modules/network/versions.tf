terraform {
  required_version = ">= 1.5.3"

  required_providers {
    google = {
      source  = "hashicorp/google"
      version = ">= 4.73"
    }
    google-beta = {
      source  = "hashicorp/google-beta"
      version = ">= 4.73"
    }
  }
}