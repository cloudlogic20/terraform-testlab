terraform {
  required_version = "0.14.3"
  required_providers {
    docker = {
      source  = "kreuzwerker/docker"
      version = "2.8.0"
    }
  }
}