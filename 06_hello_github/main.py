import subprocess
import sys

def create_github_repository(repo_name):
    # Exécute la commande Terraform apply avec le nom du dépôt en tant qu'argument
    subprocess.run(["terraform", "apply", "-auto-approve", "-var", f"nom_du_repo={repo_name}"])

if __name__ == "__main__":
    # Vérifie si un argument (nom du dépôt) est fourni en ligne de commande
    if len(sys.argv) != 2:
        print("Veuillez fournir le nom du dépôt en tant qu'argument.")
        sys.exit(1)

    repo_name = sys.argv[1]

    try:
        # Appelle la fonction pour créer le dépôt GitHub
        create_github_repository(repo_name)
        print(f"Dépôt GitHub '{repo_name}' créé avec succès.")
    except subprocess.CalledProcessError as e:
        print(f"Erreur lors de la création du dépôt GitHub : {e}")
        sys.exit(1)