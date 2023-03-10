#autor: alejandro rivera
  #cargo: qa trainee
  #fecha:12.01.23

Feature: Pruebas de interface de usuario al sitio web Swaglabs

  Scenario: Ciclo completo de compra pero con campos con datos numeros en entrada texto del comprador
    * configure driver = { type:"chrome"}
    Given driver "https://www.saucedemo.com/"
    * driver.maximize()
    And input("//*[@id='user-name']","standard_user")
    And input("//*[@id='password']", "secret_sauce")
    And click("//*[@id='login-button']")
    * delay(3000)
    When click("//*[@id='add-to-cart-sauce-labs-backpack']")
    * delay(2500)
    And click("//*[@id='add-to-cart-sauce-labs-bike-light']")
    * delay(2500)
    And click("//*[@id='add-to-cart-sauce-labs-fleece-jacket']")
    * delay(2500)
    And click("//*[@id='shopping_cart_container']/a")
    * delay(2500)
    And click("//*[@id='continue-shopping']")
    * delay(2500)
    And click("//*[@id='add-to-cart-sauce-labs-bolt-t-shirt']")
    * delay(2500)
    And click("//*[@id='shopping_cart_container']/a")
    * delay(2500)
    And click("//*[@id='checkout']")
    * delay(2500)
    #Validar el campo de nombre que solo permita tipo texto
    * def primerNombre = input("//*[@id='first-name']", "12345")
    * delay(2500)
    And input("//*[@id='last-name']", "6789")
    * delay(2500)
    And input("//*[@id='postal-code']", "120000")
    * delay(2500)
    And click("//*[@id='continue']")
    * delay(2500)
    And click("//*[@id='finish']")
    * delay(2500)
    And click("//*[@id='back-to-products']")
    * delay(2500)
    Then match driver.url == "https://www.saucedemo.com/inventory.html"
    And match driver.title == "Swag Labs"
    * match primerNombre == '#string'
