# Autor: Alejandro Rivera Corrales
  # Cargo: Analista QA Trainee ACL
  # Fecha: 03-01-2023
  # Sitio web a probar: GO REST

Feature: Llamar usuario unico
  Background:
    * url "https://gorest.co.in/"
    * header Authorization = 'Bearer 28997b1834c189c680680d4d60c712a8a9c4089bfe17a1098295ff6448b75bf6'

  Scenario: Usar metodo DELETE para Eliminar usuario unico por ID
    Given path '/public/v2/users/33238'
    When method DELETE
    Then status 204
    And print response