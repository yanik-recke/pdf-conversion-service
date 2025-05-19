terraform {
    required_providers {
        docker = {
            source = "kreuzwerker/docker"
            version = "~> 3.0.1"
        }
    }
}

provider "docker" {}

resource "docker_image" "mongodb" {
    name = "mongodb-community-server:latest"
    keep_locally = false
}

resource "docker_image" "gotenberg" {
    name = "gotenberg:latest"
    keep_locally = false
}

resource "docker_container" "mongodb" {
    image = docker_image.mongodb.image_id
    name = var.db_container_name

    ports  {
        internal = var.db_container_internal_port
        external = var.db_container_internal_port
    }
    
}

resource "docker_container" "gotenberg" {
    image = docker_image.gotenberg.image_id
    name = var.gotenberg_container_name

    ports {
        internal = var.gotenberg_internal_port
        external = var.gotenberg_external_port
    }
}