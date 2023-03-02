Feature: windows calculadora

  Scenario: Dividir en calculadora
    * robot { window: 'Calculadora', fork: 'calc' }
    * click('//*{Nueve}')
    * delay(2500)
    * click('//*{Dividir por}')
    * delay(2500)
    * click('//*{Seis}')
    * delay(2500)
    * click('//*{Es igual a}')
    * delay(2500)
    * match locate('#CalculatorResults').name == "La pantalla muestra 1,5"
    * screenshot()
    * click('Cerrar Calculadora')

