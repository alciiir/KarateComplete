Feature: test csv
    #llamada archivo csv si funciona
  Scenario Outline: caso de prueba <nombreCaso2>
    Given url 'https://reqres.in/api/users'
    When request {"name": <name>,"job": <job>}
    And method POST
    Then status 201
    Examples:
    | name | job |
    | ale | qa |


     # |read('test.csv')|
