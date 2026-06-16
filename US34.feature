Feature: Visualización de explicación de recomendación
  Como usuario,
  Quiero comprender por qué HuellaGo me sugiere una determinada acción,
  Para confiar en la utilidad de la recomendación.

  Scenario Outline: Mostrar una breve explicación del motivo en el detalle
    Given que el usuario seleccione una recomendación de la lista desplegada
    When abra su detalle expandiendo la tarjeta en la pantalla de la aplicación
    Then el sistema debe mostrar una breve explicación del motivo con el texto <motivo-texto>

    Examples: Explicaciones de motivo
      | motivo-texto                                                          |
      | "Esta acción mitiga el CO2 porque reduce el ralentí del motor."       |
      | "Apagar equipos en stand-by evita el consumo fantasma de electricidad"|

  Scenario Outline: Indicar el área de impacto de la categoría ambiental
    Given que la recomendación esté relacionada con una categoría específica del perfil
    When se visualice la información expandida en la pantalla de la interfaz
    Then debe indicarse el área de impacto mostrando el icono representativo de <nombre-area>

    Examples: Áreas ambientales
      | nombre-area    |
      | "Transporte"   |
      | "Electricidad" |
      | "Alimentación" |

  Scenario Outline: Despliegue claro y comprensible de la justificación
    Given que el usuario consulte la explicación detallada de la tarjeta
    When cargue la información de texto en el contenedor de la pantalla
    Then debe ser clara y comprensible garantizando una legibilidad de lectura de <legibilidad-porcentaje>

    Examples: Parámetros de claridad de lectura (3 cifras significativas)
      | legibilidad-porcentaje |
      | 100%                   |