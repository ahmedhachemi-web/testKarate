Feature: Exercice 3 - Création d'une commande (POST)

Background:
  * url "https://petstore.swagger.io/v2/"

Scenario: Créer une nouvelle commande de pet
  Given path "store", "order"
  And request 
  """
  {
    "id": 55,
    "petId": 0,
    "quantity": 0,
    "shipDate": "2026-02-04T13:13:14.523Z",
    "status": "placed",
    "complete": true
  }
  """
  When method post
  Then status 200
  And match response.id == 55
  And match response.status == "placed"
  And match response.complete == true