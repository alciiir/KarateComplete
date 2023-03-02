Feature: Fightcade2 en windows

  Scenario: Ejecutar blog de notas de windows
  * robot { window: 'Sin título: Bloc de notas', fork: 'notepad'}
    * delay(2000)
    * input(' holas gente de acl ' + Key.ENTER)
    * input(' espero que les este ' + Key.ENTER)
    * input(' gustando mi presentacion ' + Key.ENTER)
    * delay(2000)
    * click('//*{Cerrar}')