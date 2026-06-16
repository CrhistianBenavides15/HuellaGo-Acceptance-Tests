Feature: Acumulación de eco puntos
  Como usuario,
  Quiero recibir eco puntos al completar retos y acciones sostenibles,
  Para medir mi avance dentro de HuellaGo.

  Scenario Outline: Asignación automática de eco puntos por retos
    Given que el usuario complete un reto válido de la lista de desafíos
    When se valide la acción afirmativa en la interfaz de la pantalla
    Then el sistema debe asignar eco puntos automáticamente sumando el <puntaje-bono>

    Examples: Asignaciones de puntos (3 cifras significativas)
      | puntaje-bono |
      | 15.0 puntos  |
      | 50.0 puntos  |

  Scenario Outline: Visualizar el total acumulado en el perfil de logros
    Given que el usuario acumule puntos mediante sus rutinas sostenibles cotidianas
    When acceda a su perfil de logros e insignias en la pantalla principal
    Then debe visualizar el total obtenido actualizado reflejando el <total-puntos>

    Examples: Totales acumulados (3 cifras significativas)
      | total-puntos |
      | 120 puntos   |
      | 345 puntos   |

  Scenario Outline: Notificar inconvenientes en la asignación de puntajes
    Given que ocurra un error imprevisto en la asignación de las recompensas visuales
    When finalice el reto y se cierre la tarjeta en la pantalla
    Then el sistema debe notificarlo desplegando en la base del panel el aviso <texto-aviso>

    Examples: Avisos de error de puntos
      | texto-aviso                                                     |
      | "Puntos no sincronizados. Se actualizarán en la siguiente carga."|