locals {
  # Instance type selon le workspace
  instance_type = {
    default = "t3.micro"
    dev     = "t3.micro"
    prod    = "t3.small"
  }

  # Rétention backup RDS selon le workspace
  db_backup_retention = {
    default = 1
    dev     = 1
    prod    = 7
  }

  effective_instance_type  = lookup(local.instance_type, terraform.workspace, "t3.micro")
  effective_db_backup_days = lookup(local.db_backup_retention, terraform.workspace, 1)
}
