Feature: windows calculadora

  Scenario: Restar en calculadora
    * robot { window: 'Calculadora', fork: 'calc' }
    * click('//*{Nueve}')
    * delay(2500)
    * click('//*{Menos}')
    * delay(2500)
    * click('//*{Seis}')
    * delay(2500)
    * click('//*{Es igual a}')
    * delay(2500)
    * match locate('#CalculatorResults').name == "La pantalla muestra 3"
    * screenshot()
    * click('Cerrar Calculadora')
