Feature: Correction de test Petstore

Background:
  * url 'https://petstore.swagger.io/v2'

Scenario: Modifier le nom de l'animal 22 en Chamallow
  
  # On définit l'ID en dur (celui que tu as créé)
  * def petId = 22
  
  # --- ÉTAPE 1 : MODIFICATION (PUT) ---
  # Pour changer le nom, on doit envoyer une requête PUT avec les nouvelles infos
  Given path 'pet'
  # On construit le JSON avec l'ID 22 et le nouveau nom 'chamallow'
  And request { "id": 22, "name": "chamallow", "status": "available" }
  When method PUT
  Then status 200

  # --- ÉTAPE 2 : VÉRIFICATION (GET) ---
  # Maintenant, on va le récupérer pour prouver qu'il s'appelle bien Chamallow
  
  # CORRECTION IMPORTANTE ICI :
  # On utilise la variable petId SANS guillemets simples autour.
  # Avant : path 'pet', 'petId' (Envoyait le texte "petId" -> Erreur 404)
  # Après : path 'pet', petId   (Envoie la valeur 22 -> OK)
  Given path 'pet', petId
  When method GET
  Then status 200
  
  # --- ÉTAPE 3 : VALIDATION ---
  # On vérifie que le serveur a bien enregistré le nouveau nom
  And match response.id == 22
  And match response.name == 'chamallow'