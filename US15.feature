Feature: Visualización de progreso temporal
  Como usuario,
  Quiero observar la evolución de mi huella de carbono a lo largo del tiempo,
  Para medir si estoy mejorando mis hábitos.

  Scenario Outline: Mostrar una gráfica evolutiva temporal
    Given que el usuario acceda al historial de progreso ambiental de su cuenta
    When seleccione la sección temporal específica marcando el filtro <filtro-tiempo>
    Then el sistema debe mostrar una gráfica evolutiva con el comportamiento de las emisiones

    Examples: Filtros temporales
      | filtro-tiempo |
      | "Semanal"     |
      | "Mensual"     |
      | "Anual"       |

  Scenario Outline: Reflejar cambios de aumento o reducción en las fechas
    Given que existan registros en diferentes fechas guardados en la cuenta
    When se visualice el historial de progreso en la pantalla principal
    Then debe reflejar cambios de aumento o reducción mostrando la variación numérica <variacion-co2>

    Examples: Variaciones métricas (3 cifras significativas)
      | variacion-co2 |
      | "-12.5 kg"    |
      | "+5.20 kg"    |

  Scenario Outline: Mensaje informativo ante registros insuficientes
    Given que no existan suficientes registros históricos en el perfil del usuario
    When se intente consultar la evolución temporal en la pantalla
    Then el sistema debe mostrar un mensaje informativo con el texto <texto-notificacion>

    Examples: Notificaciones de historial vacío
      | texto-notificacion                                                |
      | "Se requiere al menos dos semanas de datos para trazar la gráfica."|