# Autor: Alejandro Rivera Corrales
  # Cargo: Analista QA Trainee ACL
  # Fecha: 03-01-2023
  # Sitio web a probar: GO REST

Feature: En listar todos los usuarios
  Background:
    * url "https://gorest.co.in/"
    * header Authorization = 'Bearer 5cc07642389176d8b407df16fe936f00ea427411094e15584c6de3a26201bd8b'

  Scenario: Usar metodo GET para llamar todos los usuarios
    Given path '/public/v2/users'
    When method GET
    Then status 200
    And print response

  Scenario: Usar metodo GET para llamar todos los usuarios
    Given path '/public/v2/users'
    When method GET
    Then status 200
    And print response

  Scenario: Usar metodo GET para llamar todos los usuarios
    Given path '/public/v2/users'
    When method GET
    Then status 200
    And print response