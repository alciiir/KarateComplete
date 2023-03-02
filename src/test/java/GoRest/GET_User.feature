# Autor: Alejandro Rivera Corrales
  # Cargo: Analista QA Trainee ACL
  # Fecha: 03-01-2023
  # Sitio web a probar: GO REST

  Feature: Llamar usuario unico
    Background:
      * url "https://gorest.co.in/"
      * header Authorization = 'Bearer 28997b1834c189c680680d4d60c712a8a9c4089bfe17a1098295ff6448b75bf6'

    Scenario: Usar metodo GET para llamar usuario unico por ID
      Given path '/public/v2/users/33238'
      When method GET
      Then status 200
      And print response

    Scenario: Usar metodo GET para llamar usuario unico por name
      Given path '/public/v2/users'
      And param name = "Pepito1"
      When method GET
      Then status 200
      And print response

    Scenario: Usar metodo GET para llamar usuario unico por email
      Given path '/public/v2/users'
      And param email = "pepito1@gmail.com"
      When method GET
      Then status 200
      And print response