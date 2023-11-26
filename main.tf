terraform {
  required_providers {
    docker = {
      source = "kreuzwerker/docker"
      version = "~> 3.0.2"
    }
  }
}


provider "docker" {
  alias = "ubuntu-vagrant-1"
  host  = "tcp://192.168.216.136:2375"
}

resource "docker_container" "container1" {
  provider = docker.ubuntu-vagrant-1
  name     = "container1"
  image    = "nginx"
  ports {
    internal = 80
    external = 8001
  }
}

provider "docker" {
  alias = "ubuntu-vagrant-2"
  host  = "tcp://192.168.216.137:2375"
}

resource "docker_container" "container2" {
  provider = docker.ubuntu-vagrant-2
  name     = "container2"
  image    = "nginx"
  ports {
    internal = 80
    external = 8002
  }
}
