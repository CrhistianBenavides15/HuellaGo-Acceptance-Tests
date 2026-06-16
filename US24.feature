Feature: Finalización de reto ecológico
  Como usuario,
  Quiero completar un reto ecológico cumplido,
  Para obtener reconocimiento dentro de la aplicación.

  Scenario Outline: Marcar un reto como completado de forma exitosa
    Given que el usuario cumpla las condiciones requeridas del reto en la interfaz
    When seleccione el botón con el texto <nombre-boton>
    Then el sistema debe marcarlo como completado moviéndolo al historial de logros

    Examples: Botones de cierre
      | nombre-boton     |
      | "Finalizar reto" |

  Scenario Outline: Impedir la finalización si no se cumplen los requisitos
    Given que el reto no cumpla aún con los requisitos numéricos mínimos de la interfaz
    When el usuario intente finalizarlo forzadamente presionando el botón de cierre
    Then el sistema debe impedir la acción bloqueando el elemento de la pantalla

    Examples: Estados de bloqueo
      | estado-control |
      | "Bloqueado"    |

  Scenario Outline: Mostrar animación o mensaje de logro al finalizar
    Given que el reto sea completado correctamente por el usuario
    When finalice el proceso de validación visual en la pantalla
    Then debe mostrarse una animación o mensaje de logro destacado con el texto <mensaje-logro>

    Examples: Mensajes de éxito
      | mensaje-logro                                     |
      | "¡Felicidades! Has completado este reto con éxito"|