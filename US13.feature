Feature: Visualización de huella de carbono total
  Como usuario,
  Quiero visualizar mi huella de carbono total dentro del dashboard,
  Para comprender mi impacto ambiental general.

  Scenario Outline: Mostrar el valor total de la huella de carbono
    Given que el usuario acceda al dashboard principal
    When cargue la sección principal de las métricas visuales
    Then el sistema debe mostrar el valor total de su huella de carbono reflejando <total-huella>

    Examples: Totales de huella (3 cifras significativas)
      | total-huella |
      | 4.20 t       |
      | 2.85 t       |

  Scenario Outline: Mostrar valores en unidades claras de CO2
    Given que existan datos registrados suficientes dentro de las categorías del perfil
    When se visualice la huella en el panel central de la pantalla
    Then debe de mostrarse en unidades claras de CO2 utilizando la etiqueta métrica <unidad-visual>

    Examples: Unidades de medida
      | unidad-visual |
      | "kg de CO2"   |
      | "t de CO2"    |

  Scenario Outline: Mostrar advertencia ante ausencia de datos completos
    Given que no existan datos completos para procesar el valor consolidado
    When el usuario consulte la huella desde el panel de control
    Then el sistema debe mostrar una advertencia visual con el texto <mensaje-advertencia>

    Examples: Advertencias de datos
      | mensaje-advertencia                                             |
      | "Datos insuficientes para mostrar el indicador total de huella."|