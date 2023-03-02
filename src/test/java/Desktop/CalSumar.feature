Feature: windows calculadora

  Scenario: Sumar en calculadora
    * robot { window: 'Calculadora', fork: 'calc' }
    * click('//*{Nueve}')
    * delay(2500)
    * click('//*{Más}')
    * delay(2500)
    * click('//*{Seis}')
    * delay(2500)
    * click('//*{Es igual a}')
    * delay(2500)
    * match locate('#CalculatorResults').name == "La pantalla muestra 14"
    * screenshot()
    * click('Cerrar Calculadora')







