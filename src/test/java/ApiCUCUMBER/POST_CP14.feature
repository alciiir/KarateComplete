# autor: Alejandro Rivera Corrales
# Fecha: 27 - 12- 2022

Feature: Testing API en sitio web REQRES

  Background:
    * url "https://reqres.in/"

  Scenario: Verificar crear usuario unico metodo POST
    Given path "/api/users"
    When request  {"name": "alejandro","job": "analista qa"}
    And method POST
    Then status 201
    And print response