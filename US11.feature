Feature: Generación de resultado inicial de huella de carbono
  Como usuario,
  Quiero obtener una medición inicial de mi huella de carbono al finalizar el registro de hábitos,
  Para conocer mi nivel de impacto ambiental.

  Scenario Outline: Generar un resultado total estimado de CO2
    Given que el usuario complete la configuración inicial de hábitos en la interfaz
    When seleccione el botón con el texto "Calcular huella"
    Then el sistema debe generar un resultado total estimado expresado en <valor-co2> de CO2

    Examples: Resultados estimados iniciales (3 cifras significativas)
      | valor-co2 |
      | 3.45 t    |
      | 1.20 t    |

  Scenario Outline: Mostrar el nivel de impacto correspondiente
    Given que el sistema procese la información ingresada en los formularios
    When finalice el cálculo de las variables ambientales
    Then debe mostrar el nivel de impacto correspondiente indicando la etiqueta <nivel-impacto>

    Examples: Etiquetas de nivel de impacto
      | nivel-impacto |
      | "Alto"         |
      | "Moderado"     |
      | "Bajo"         |

  Scenario Outline: Solicitar datos faltantes ante información insuficiente
    Given que exista información insuficiente en los parámetros obligatorios de la cuenta
    When se intente calcular la huella desde la pantalla de cierre
    Then el sistema debe solicitar completar los datos faltantes mostrando el mensaje <mensaje-alerta>

    Examples: Mensajes de alerta de completitud
      | mensaje-alerta                                                   |
      | "Información incompleta. Por favor, revise el bloque de transporte." |