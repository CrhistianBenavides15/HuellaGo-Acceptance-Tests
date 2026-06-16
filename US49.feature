Feature: Cierre de sesión
  Como usuario,
  Quiero cerrar sesión de manera segura dentro de HuellaGo,
  Para finalizar mi acceso a la aplicación.

  Scenario Outline: Finalizar la sesión activa desde el menú de perfil
    Given el usuario acceda al menú de perfil o configuración en la aplicación
    And la sesión de usuario se encuentra activa en la interfaz de pantalla
    When seleccione la opción interactiva con el texto <opcion-texto>
    Then el sistema debe finalizar su sesión activa y restringir de inmediato las pantallas privadas

    Examples: Opciones de salida
      | opcion-texto    |
      | "Cerrar sesión"  |

  Scenario Outline: Redirección forzada tras cierre de sesión efectivo
    Given la sesión se cierre correctamente desde la cuenta del usuario en la plataforma
    When termine el proceso de desconexión borrando los datos de visualización del cliente
    Then debe redirigirse a la pantalla de acceso o de inicio cargando la interfaz <pantalla-destino>

    Examples: Destinos de salida
      | pantalla-destino |
      | "Login"          |
      | "Landing Page"   |

  Scenario Outline: Mostrar notificación de aviso ante inconvenientes de red
    Given ocurra un inconveniente al cerrar sesión debido a la latencia de la pantalla
    When el usuario intente salir presionando el botón de confirmación nuevamente
    Then el sistema debe mostrar una notificación en la base con el texto exacto <mensaje-notificacion>

    Examples: Mensajes de error de salida
      | mensaje-notificacion                                          |
      | "Error de red. No se pudo cerrar la sesión de forma segura." |