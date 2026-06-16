Feature: Seguimiento de progreso en retos activos
  Como usuario,
  Quiero visualizar el progreso de mis retos activos,
  Para saber cuánto me falta para completarlos.

  Scenario Outline: Mostrar barra o porcentaje de avance en retos
    Given que el usuario acceda a sus retos activos en el panel de control
    When consulte uno de ellos detalladamente en la pantalla
    Then el sistema debe mostrar una barra o porcentaje de avance indicando el <valor-progreso>

    Examples: Valores de avance (3 cifras significativas)
      | valor-progreso |
      | 25.0%          |
      | 75.5%          |

  Scenario Outline: Actualización automática ante cumplimiento parcial
    Given que el usuario registre un cumplimiento parcial de las actividades del reto
    When se actualicen los datos en las casillas de verificación de la pantalla
    Then el progreso debe reflejarse automáticamente incrementando el <nuevo-progreso>

    Examples: Incrementos de progreso (3 cifras significativas)
      | nuevo-progreso |
      | 50.0%          |
      | 100%           |

  Scenario Outline: Mostrar progreso inicial en cero por ciento
    Given que el reto aceptado no tenga avances aún registrados por el usuario
    When se visualice la tarjeta del desafío en la interfaz de usuario
    Then debe de mostrarse en un valor base estricto equivalente a <valor-inicial>

    Examples: Valores iniciales (3 cifras significativas)
      | valor-inicial |
      | 0.00%         |