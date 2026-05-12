output "container_name" {
  description = "Nom du container nginx"
  value       = docker_container.web.name
}

output "url" {
  description = "URL d'accès à nginx"
  value       = "http://localhost:${docker_container.web.ports[0].external}"
}
