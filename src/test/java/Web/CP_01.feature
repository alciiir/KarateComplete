Feature: Pruebas de interface de usuario al sitio web Swaglabs

  Scenario: Test Login responsivo
    # Especifico con que navegador se va a ejecutar la prueba UI
    * configure driver = {type:"msedge"}
    # Ejecución desde el sitio web a probar
    Given driver "https://www.saucedemo.com/"
    # Especificación de tiempo que se le otorga a este paso
    And delay(7000)
    # Entrego las dimensiones en la cual la pagina se debe adaptar
    When driver.dimensions = {x:0, y:0, width: 390, height: 844}
    * def dims = driver.dimensions
    # Especificación de tiempo que se le otorga a este paso
    * delay(6000)
    # Especificación de que URL y TItulo espero de respuesta al terminar la prueba
    Then match driver.url == "https://www.saucedemo.com/"
    And match driver.title == "Swag Labs"
