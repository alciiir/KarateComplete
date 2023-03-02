# Autor: Alejandro Rivera Corrales
  # Cargo: Analista QA Trainee ACL
  # Fecha: 03-01-2023
  # Sitio web a probar: GO REST
Feature: Crear usuarios
  Background:
    * url "https://gorest.co.in/"
    * header Authorization = 'Bearer 8f8f382a41b68334a1469feee2c3a671fb58238eb35e540b4f054464109ca1d1'

  Scenario Outline: Crear usuarios con metodo POST con OUTLINE
    Given path '/public/v2/users'
    When request
    """ {
    "<name>": "<Vname>",
    "<email>": "<Vemail>",
    "<gender>": "<Vgender>",
    "<status>": "<Vstatus>"
   }
    """
    And method POST
    Then status 201
    And print response
    Examples:
    |name|Vname|email|Vemail|gender|Vgender|status|Vstatus|
    |name|Vname|email|Vemail|gender|Vgender|status|Vstatus|
    |name|Vname|email|Vemail|gender|Vgender|status|Vstatus|
    |name|Vname|email|Vemail|gender|Vgender|status|Vstatus|