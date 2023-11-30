provider "github" {
  token = "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"
}

resource "github_repository" "mon_repo" {
  name        = var.nom_du_repo
  description = "Créé avec Terraform"
  private     = true
}

variable "nom_du_repo" {
  description = "Nom du dépôt GitHub"
  type        = string
}