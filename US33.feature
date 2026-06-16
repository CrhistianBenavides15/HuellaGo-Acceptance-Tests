Feature: Priorización de recomendaciones por impacto
  Como usuario,
  Quiero que las recomendaciones se ordenen según el impacto positivo que pueden generar,
  Para enfocarme primero en las acciones más útiles.

  Scenario Outline: Ordenar sugerencias por nivel de impacto esperado
    Given que el sistema muestre recomendaciones ecológicas en el panel
    When el usuario acceda a la lista principal desde el menú de la aplicación
    Then las sugerencias deben ordenarse por nivel de impacto esperado priorizando el <puntos-recompensa>

    Examples: Valores de recompensa ordenados de mayor a menor (3 cifras significativas)
      | puntos-recompensa  |
      | "+150 eco puntos"  |
      | "+60.0 eco puntos" |
      | "+45.0 eco puntos" |

  Scenario Outline: Diferenciar visualmente la prioridad del beneficio
    Given que existan recomendaciones de bajo y alto beneficio en la lista
    When se cargue la información gráfica en la pantalla de la aplicación
    Then debe diferenciarse visualmente la prioridad utilizando la etiqueta de color <etiqueta-visual>

    Examples: Distintivos visuales
      | etiqueta-visual  |
      | "Rojo Alto"      |
      | "Amarillo Medio" |
      | "Verde Bajo"     |

  Scenario Outline: Visualizar el impacto estimado en el detalle del elemento
    Given que el usuario consulte el detalle de una sugerencia específica
    When seleccione la recomendación mediante un toque interactivo en la pantalla
    Then debe visualizar el impacto estimado mostrando la reducción proyectada de <reduccion-co2>

    Examples: Reducciones proyectadas (3 cifras significativas)
      | reduccion-co2 |
      | 12.5 kg       |
      | 3.50 kg       |