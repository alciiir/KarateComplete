# Autor: Alejandro Rivera Corrales
  # Cargo: Analista QA Trainee ACL
  # Fecha: 03-01-2023
  # Sitio web a probar: GO REST
Feature: Crear usuario
  Background:
    * url "https://gorest.co.in/"
    * header Authorization = 'Bearer 28997b1834c189c680680d4d60c712a8a9c4089bfe17a1098295ff6448b75bf6'

  Scenario: Modificar a Usuario con metodo PATCH actualizar EMAIL
    Given path '/public/v2/users/33238'
    When request
    """ {
    "email": "pepitogonzales@gmail.com",
   }
    """
    And method PUT
    Then status 200
    And print response