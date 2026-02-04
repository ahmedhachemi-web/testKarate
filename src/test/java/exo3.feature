Feature: Exercice 3 - Création d'une commande (POST)

Background:
  * url 

Scenario: Créer une nouvelle commande de pet
  Given 
  And request 
  """
  {
    "id": 101,
    "petId": 5,
    "quantity": 1,
    "shipDate": "2026-02-04T13:00:00.000Z",
    "status": "placed",
    "complete": true
  }
  """
  When 
  Then 
  And 
  And 