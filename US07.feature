Feature: Selección de objetivos ecológicos iniciales
  Como usuario nuevo,
  Quiero seleccionar mis principales objetivos ambientales dentro del onboarding,
  Para recibir una experiencia inicial más personalizada.

  Scenario Outline: Selección múltiple de metas ambientales en la interfaz
    Given que el usuario se encuentre en la etapa de personalización inicial del perfil
    When visualice las opciones interactivas presentadas en la cuadrícula de la pantalla
    Then debe poder seleccionar uno o más objetivos ecológicos marcando la casilla <objetivo-seleccionado>

    Examples: Objetivos ecológicos
      | objetivo-seleccionado        |
      | "Reducir uso de plástico"   |
      | "Ahorrar energía en casa"    |
      | "Viajar de forma sostenible" |

  Scenario Outline: Confirmación y registro de las metas seleccionadas
    Given que el usuario confirme los objetivos ecológicos marcados en la vista
    When presione el botón de confirmación con el texto <nombre-boton>
    Then el sistema debe registrar la selección guardando las preferencias en su cuenta

    Examples: Botones de guardado
      | nombre-boton |
      | "Guardar"    |

  Scenario Outline: Restringir el avance si no se marca ningún objetivo ambiental
    Given que el usuario no seleccione ningún objetivo de la lista provista en la pantalla
    When intente continuar hacia el siguiente paso de personalización
    Then el sistema debe solicitar al menos una opción mostrando un mensaje de advertencia <mensaje-alerta>

    Examples: Mensajes de advertencia
      | mensaje-alerta                                                   |
      | "Debe seleccionar al menos un objetivo ambiental para continuar."|