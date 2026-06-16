Feature: Recalcular huella de carbono tras modificar hábitos
  Como usuario,
  Quiero recalcular mi huella de carbono cuando actualice mis hábitos,
  Para visualizar cambios en mi impacto ambiental.

  Scenario Outline: Actualizar el resultado tras modificar hábitos
    Given que el usuario modifique información de sus hábitos en los formularios de configuración
    When seleccione el botón con el texto "Recalcular huella"
    Then el sistema debe actualizar el resultado reflejando el <nuevo-total> en la interfaz

    Examples: Nuevos totales recalculados (3 cifras significativas)
      | nuevo-total |
      | 3.10 t      |
      | 2.25 t      |

  Scenario Outline: Reflejar cambios en los paneles del dashboard principal
    Given que existan nuevos datos válidos guardados y procesados por la aplicación
    When finalice el cálculo de actualización en la pantalla de carga
    Then el dashboard debe reflejar los cambios modificando de manera directa el <indicador-panel>

    Examples: Paneles actualizados
      | indicador-panel    |
      | "Barra de Impacto" |
      | "Resumen de CO2"   |

  Scenario Outline: Mostrar alerta ante errores de procesamiento en la pantalla
    Given que ocurra un error en el procesamiento de los datos dentro de la interfaz
    When se intente recalcular la huella presionando el botón de confirmación
    Then el sistema debe mostrar una alerta en pantalla con el texto exacto <texto-alerta>

    Examples: Alertas de error de procesamiento
      | texto-alerta                                                      |
      | "Inconveniente al procesar el recálculo. Intente en unos momentos."|