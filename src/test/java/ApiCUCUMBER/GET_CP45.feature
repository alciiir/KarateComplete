#Autor: Alejandro Rivera Corrales
  #Fecha 28 - 12 - 2022

Feature: Testing API en sitio web REQRES

  Scenario: Verificar usuario unico metodo GET  #TestAPROBADO
    Given url "https://reqres.in/api/users?delay=2"
    When method GET
    Then status 200
    And print response

  Scenario: Verificar usuario unico metodo GET  #TestNOAPROBADO
    Given url "https://reqres.in/api/users?delay=-2"
    When method GET
    Then status 200
    And print response