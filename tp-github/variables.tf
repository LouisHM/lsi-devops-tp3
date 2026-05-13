variable "project_name" {
  description = "Nom du projet (préfixe des repos)"
  type        = string
  default     = "tp-terraform"
}

variable "db_url" {
  description = "URL de base de données (secret GitHub Actions)"
  type        = string
  sensitive   = true
  default     = "postgresql://user:pass@localhost/mydb"
}
