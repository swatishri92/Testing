terraform {

 required_providers {

  docker = {

   source = "kreuzwerker/docker"

   version = "2.16.0"

  }

 }

}



provider "docker" {

 host = "unix:///var/run/docker.sock"

}

resource "docker_image" "nginx" {

 name = "nginx:latest"

}



# Create a container

resource "docker_container" "foo" {

 image = docker_image.nginx.latest

 name = "foo"

}




