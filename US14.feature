Feature: Desglose de huella por categorías
  Como usuario,
  Quiero visualizar qué actividades generan mayor impacto dentro de mi huella de carbono,
  Para identificar en qué aspectos debo mejorar.

  Scenario Outline: Mostrar el desglose detallado de actividades de impacto
    Given que el usuario consulte el análisis detallado de su huella
    When visualice la información segmentada en la interfaz
    Then el sistema debe mostrar categorías como <categoria-impacto>

    Examples: Categorías de impacto ambiental
      | categoria-impacto |
      | "Transporte"      |
      | "Energía"         |
      | "Alimentación"    |
      | "Residuos"        |

  Scenario Outline: Representación mediante gráficos comprensibles
    Given que existan registros válidos ingresados en las rutinas de la aplicación
    When se cargue el desglose proporcional en la pantalla
    Then debe representarse mediante gráficos comprensibles que detallen el <porcentaje-categoria>

    Examples: Distribución en gráficos (3 cifras significativas)
      | porcentaje-categoria |
      | 45.5%                |
      | 30.0%                |
      | 24.5%                |

  Scenario Outline: Indicar categorías incompletas en la interfaz
    Given que alguna categoría ambiental específica no tenga información ingresada
    When se visualice el análisis segmentado en la pantalla
    Then debe indicarse como incompleta mostrando la leyenda informativa <estado-categoria>

    Examples: Leyendas de estado
      | estado-categoria     |
      | "Sin datos — 0.00%" |