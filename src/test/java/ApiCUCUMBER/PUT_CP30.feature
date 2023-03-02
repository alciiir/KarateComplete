#Autor: Alejandro Rivera Corrales
# Fecha: 27 - 12 - 2022
  # Cargo: analista QA trainee en ACL

Feature: Verificar si se logra modificar usuario buscado por el ID, pero ingresando datos vacios

  Background:
    * url "https://reqres.in/"


  Scenario: Verificar la modificación de usuario metodo PUT pero con datos VACIOS
    #NO APROBADA
    Given path "/api/users/2"
    When request {"name": "", "job": ""}
    And method PUT
    Then status 200
    And print response
    #Validando los campos name y job con datos de tipo STRING para que solo acepte
    # esos tipos de datos de entrada y en caso que se ingrese otro el escenario sea fallado
    And match response.name == "*"
    And match response.job == "*"