Feature: Exercice 5 - Suppression (DELETE)

Background:
  * url "https://petstore.swagger.io/v2"

Scenario: Vérifier qu'une commande inexistante renvoie 404
Given path "store", "order", "9999999999999999"
When method GET 
Then status 404 
And match response.message == "Order not found"