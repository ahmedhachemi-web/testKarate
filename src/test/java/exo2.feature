Feature: Correction de test Petstore (Exercice)

Background:
  * url 'https://petstore.swagger.io/v2'

Scenario: Modifier le nom de l'animal 22
  
  # On définit l'ID en dur
  * def petId = 22
  
  # --- ÉTAPE 1 : MODIFICATION (PUT) ---
  And request { "id": 22, "name": "chamallow", "status": "available" }
  When method PUT
  Then status 200

  # --- ÉTAPE 2 : VÉRIFICATION (GET) ---
  Given path 'pet', 'petId'
  When method GET
  Then status 200
  
  # --- ÉTAPE 3 : VALIDATION ---
  And match response.id == 22
  And match response.name == 'Chamallow'