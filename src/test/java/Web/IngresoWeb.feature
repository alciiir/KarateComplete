Feature: Pruebas de interface de usuario al sitio web Swaglabs

  Scenario: Test Performance ingreso web
    Given url "https://www.saucedemo.com/"
    When method GET
    Then status 200