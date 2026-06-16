Feature: Visualización de retos ecológicos disponibles
  Como usuario,
  Quiero visualizar una lista de retos ecológicos disponibles,
  Para elegir acciones sostenibles que pueda realizar dentro de mi rutina.

  Scenario Outline: Mostrar retos clasificados en la pantalla
    Given que el usuario acceda a la sección de retos de la aplicación
    When cargue la pantalla principal de desafíos
    Then el sistema debe mostrar retos diarios, semanales y personalizados en el contenedor <bloque-retos>

    Examples: Clasificación de desafíos
      | bloque-retos      |
      | "Retos Diarios"   |
      | "Retos Semanales" |
      | "Personalizados"  |

  Scenario Outline: Clasificación correcta de los tipos de retos
    Given que existan diferentes tipos de retos vigentes en la plataforma
    When se visualicen las tarjetas en la interfaz de usuario
    Then deben estar clasificados correctamente mostrando la etiqueta de dificultad <etiqueta-nivel>

    Examples: Etiquetas de dificultad
      | etiqueta-nivel |
      | "Baja"         |
      | "Media"        |
      | "Alta"         |

  Scenario Outline: Mensaje informativo ante ausencia de retos activos
    Given que no haya retos activos disponibles para el perfil del usuario
    When el usuario ingrese a la pantalla de desafíos cotidianos
    Then el sistema debe mostrar un mensaje informativo con el texto <mensaje-vacio>

    Examples: Mensajes de ausencia de retos
      | mensaje-vacio                                              |
      | "¡Buen trabajo! Has completado todos los retos disponibles."|