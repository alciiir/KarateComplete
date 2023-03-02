Feature: windows calculadora

  Scenario: Multiplicar en calculadora
    * robot { window: 'Calculadora', fork: 'calc' }
    * click('//*{Siete}')
    * delay(2500)
    * click('//*{Multiplicar por}')
    * delay(2500)
    * click('//*{Ocho}')
    * delay(2500)
    * click('//*{Es igual a}')
    * delay(2500)
    * match locate('#CalculatorResults').name == "La pantalla muestra 56"
    * screenshot()
    * click('Cerrar Calculadora')



