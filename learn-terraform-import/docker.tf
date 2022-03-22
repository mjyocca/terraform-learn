
resource "docker_container" "web" {
  # image = "sha256:f2f70adc5d89aa922836e9cc6801980a12a7ff9012446cc6edf52ef8798a67bd"
  image = docker_image.nginx.latest
  name  = "hashicorp-learn"

  ports {
    external = 8081
    internal = 80
  }
  env = []
}

resource "docker_image" "nginx" {
  name         = "nginx:latest"
}
