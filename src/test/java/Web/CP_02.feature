Feature: Pruebas de interface de usuario al sitio web Swaglabs

  Scenario: Buscar sitio web en GOOGLE
    # Especifico con que navegador se va a ejecutar la prueba UI
    * configure driver = {type:"msedge"}
    Given driver  "https://www.google.com/"
    * delay(2300)
    # ingreso el texto SWAG LABS en el buscador google
    When input("/html/body/div[1]/div[3]/form/div[1]/div[1]/div[1]/div/div[2]/input", "Swag labs")
    * delay(2300)
    # Presiona el click BUSCAR EN GOOGLE
    * click("/html/body/div[1]/div[3]/form/div[1]/div[1]/div[4]/center/input[1]")
    * delay(2300)
    # Click en el primer elemento asociado a esta busqueda
    # Consejo: Dloble comillas al exterior del XPATH y comillas simples al interior
    * click("//*[@id='rso']/div[1]/div/div/div/div/div/div/div[1]/a/h3")
    * delay(2300)
    # Especificación de que URL y TItulo espero de respuesta al terminar la prueba
    Then match driver.url == "https://www.saucedemo.com/"
    And match driver.title == "Swag Labs"




