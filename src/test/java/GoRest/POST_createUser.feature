# Autor: Alejandro Rivera Corrales
  # Cargo: Analista QA Trainee ACL
  # Fecha: 03-01-2023
  # Sitio web a probar: GO REST
Feature: Crear usuario
  Background:
    * url "https://gorest.co.in/"
    * header Authorization = 'Bearer 28997b1834c189c680680d4d60c712a8a9c4089bfe17a1098295ff6448b75bf6'

  Scenario:
    Given path '/public/v2/users'
    When request
    """ {
    "name": "Pepito1",
    "email": "pepito1@gmail.com",
    "gender": "male",
    "status": "active"
   }
    """
    And method POST
    Then status 201
    And print response
