Feature: Modificación de hábitos ambientales registrados
  Como usuario,
  Quiero actualizar mis hábitos ambientales cuando cambie mi rutina,
  Para recalcular mi huella de carbono con datos actuales.

  Scenario Outline: Guardar nueva información al modificar los hábitos
    Given el usuario acceda a la configuración ambiental de su cuenta personal
    When modifique sus hábitos cambiando las variables en los campos con los valores <nuevos-km> y <dias-uso>
    Then el sistema debe guardar la nueva información sobreescribiendo el registro histórico previo

    Examples: Nuevos datos de hábitos (3 cifras significativas)
      | nuevos-km | dias-uso  |
      | 25.5      | 5.00 días |
      | 12.0      | 3.00 días |

  Scenario Outline: Habilitar el recálculo tras confirmar los cambios en la interfaz
    Given el usuario finalice la actualización de todas las variables deseadas de su rutina
    When confirme cambios seleccionando el botón con el texto "Guardar cambios"
    Then debe habilitarse el recálculo de huella desbloqueando los botones de acción en el dashboard

    Examples: Elementos habilitados
      | control-pantalla |
      | "Recalcular"     |

  Scenario Outline: Solicitar completitud ante campos obligatorios vacíos
    Given existan campos incompletos o cuadros de texto vacíos en el formulario de edición
    When intente guardar las modificaciones presionando el botón de confirmación
    Then el sistema debe solicitar completar la información marcando el campo <campo-error>

    Examples: Identificadores de error
      | campo-error         |
      | "Días de transporte"|
      | "Consumo de gas"    |