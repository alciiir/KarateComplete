#Autor: Alejandro Rivera Corrales
# Fecha: 27 - 12 - 2022
  # Cargo: analista QA trainee en ACL

Feature: Verificar el campo ID con datos no correspondientes

  Background:
    * url "https://reqres.in/"

  Scenario Outline: Vista de usuario desconocido con METODO GET con ID invalido #TestOBSERVACION
    Given path "/api/unknown/<ID>"
    When method GET
    Then status <estadoStatus>
    And print response
    Then match response.data.id == '#number'
    #noAPROBADA
    Examples:
    |  ID   | estadoStatus |
    |   2    | 200 |
    | -12   | 404 |
    |  asd  | 404 |

