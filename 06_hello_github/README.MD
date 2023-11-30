Cette partie va nous servir à lier notre github à notre compte pour que terraform puisse avoir les permissions pour créer un repo.

provider "github" {
  token = "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"
}


Celle ci pour la creation du repo en privé, on utilise maintenant la variable "nom_du_repo" pour définir le nom du dépôt GitHub au lieu d'un nom statique.

resource "github_repository" "mon_repo" {
  name        = var.nom_du_repo
  description = "Créé avec Terraform"
  private     = true
}

La création de la variable en question. 

variable "nom_du_repo" {
  description = "Nom du dépôt GitHub"
  type        = string
}

on utilise ensuite pyhton pour automatiser le tout, le script est expliqué via des commentaires 

BEN KHELFALLAH WALID