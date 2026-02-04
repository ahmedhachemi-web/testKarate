Feature: Atelier - Gestion du cycle de vie d'un Pet

Background:
  # TODO: Renseigner l'URL de base de l'API Petstore (v2)
  

# ---------------------------------------------------------
# EXO 1 : Créer un animal (POST)
# ---------------------------------------------------------
Scenario: Création d'un nouveau chien
  Given path "pet"
  
  # TODO: Ajouter le mot-clé pour envoyer un corps de requête
  # Note : Utilisez ce JSON -> { "id": 2026, "name": "Lucky", "status": "available" }
  
  # TODO: Indiquer la méthode HTTP pour la création
  
  # TODO: Vérifier que le code statut est celui d'un succès (200)
  
  # TODO: (Bonus) Vérifier que le nom dans la réponse est bien "Lucky"


# ---------------------------------------------------------
# EXO 2 : Récupérer l'animal (GET)
# ---------------------------------------------------------
Scenario: Vérifier que l'animal existe bien
  # TODO: Compléter le chemin pour cibler l'animal avec l'ID 2026
  
  # TODO: Indiquer la méthode HTTP (GET)
  
  # TODO: Vérifier le statut 200
  
  # TODO: Vérifier que l'ID dans la réponse est bien 2026


# ---------------------------------------------------------
# EXO 3 : Modifier le statut (PUT)
# ---------------------------------------------------------
Scenario: Mettre à jour le statut de Lucky en 'sold'
  Given path "pet"
  
  # TODO: Définir le corps de la requête (request)
  # Note : Reprenez le JSON et changez le status en "sold"
  
  # TODO: Indiquer la méthode HTTP pour la mise à jour
  
  # TODO: Vérifier le statut 200
  
  # TODO: Vérifier que response.status est bien passé à "sold"


# ---------------------------------------------------------
# EXO 4 : Supprimer l'animal (DELETE)
# ---------------------------------------------------------
Scenario: Supprimer l'animal pour nettoyer les données
  # TODO: Construire le chemin vers /pet/2026
  
  # TODO: Utiliser la méthode DELETE
  
  # TODO: Vérifier le statut 200
  
  # TODO: Vérifier que le message de réponse contient l'ID supprimé ("2026")