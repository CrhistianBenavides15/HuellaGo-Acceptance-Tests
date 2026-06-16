Feature: Visualización de impacto diario
  Como usuario,
  Quiero consultar mi impacto ambiental diario,
  Para llevar un control más detallado de mis acciones cotidianas.

  Scenario Outline: Mostrar el impacto correspondiente a una fecha seleccionada
    Given que el usuario acceda a la sección de detalle diario de emisiones
    When seleccione una fecha específica utilizando el componente de calendario <fecha-seleccionada>
    Then el sistema debe mostrar el impacto correspondiente indicando el <valor-diario> de CO2

    Examples: Parámetros de consulta diaria (3 cifras significativas)
      | fecha-seleccionada | valor-diario |
      | "2026-06-15"       | 12.5 kg      |
      | "2026-06-14"       | 9.80 kg      |

  Scenario Outline: Presentar registros diarios ordenadamente
    Given que existan registros diarios guardados consecutivamente en el perfil
    When se visualicen las métricas diarias en la pantalla de la aplicación
    Then deben presentarse ordenadamente listados de forma cronológica descendente

    Examples: Modos de ordenamiento
      | modo-lista    |
      | "Cronológico" |

  Scenario Outline: Indicar ausencia de datos en el día consultado
    Given que no exista información del día consultado en el historial de la cuenta
    When se acceda a la fecha vacía a través de la interfaz de la pantalla
    Then el sistema debe indicar ausencia de datos mostrando la etiqueta <mensaje-vacio>

    Examples: Mensajes de ausencia de información
      | mensaje-vacio                           |
      | "No se registraron actividades este día."|