output "repo_app_url" {
  description = "URL du repo app"
  value       = github_repository.app.html_url
}

output "repo_infra_url" {
  description = "URL du repo infra"
  value       = github_repository.infra.html_url
}
