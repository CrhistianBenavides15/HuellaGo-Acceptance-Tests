Feature: Visualización de equivalencias ecológicas
  Como usuario,
  Quiero observar equivalencias visuales de mi huella de carbono,
  Para comprender de forma sencilla el impacto que genero.

  Scenario Outline: Mostrar equivalencias ambientales comprensibles
    Given que el usuario visualice su huella total en el panel de control
    When acceda al detalle de equivalencias en la sección inferior
    Then el sistema debe mostrar equivalencias ambientales comprensibles empleando la analogía <tipo-equivalencia>

    Examples: Analogías de impacto
      | tipo-equivalencia     |
      | "Árboles plantados"   |
      | "Smartphones cargados"|
      | "Kilómetros de viaje" |

  Scenario Outline: Ajustar equivalencias automáticamente ante cambios de valor
    Given que el sistema actualice los valores de la huella de carbono del usuario
    When cambien los valores numéricos de las emisiones en el perfil
    Then las equivalencias deben ajustarse automáticamente modificando el <valor-equivalente>

    Examples: Ajuste de equivalencias (3 cifras significativas)
      | valor-equivalente |
      | 14.0 árboles      |
      | 125 teléfonos     |

  Scenario Outline: Mostrar breve explicación al seleccionar un elemento
    Given que el usuario consulte una equivalencia específica en la pantalla
    When seleccione el elemento interactivo o icono de la analogía
    Then debe mostrarse una breve explicación contextualizada detallando el texto <explicacion>

    Examples: Explicaciones contextuales
      | explicacion                                                              |
      | "Esta cantidad de CO2 equivale a lo que absorben 14.0 árboles en un año."|