Feature: Gestion des commandes

Background:

* url "https://petstore.swagger.io/v2/"

Scenario: Vérifier une commande existante
Given path "store", "order", "3"
When method get
Then status 200
And match response == "#present"
* print "voici l'id de ma réponse -> ", response.id