Feature: Retorno a landing page informativa
  Como visitante o usuario,
  Quiero poder regresar a la landing informativa de HuellaGo,
  Para volver a consultar información general del producto.

  Scenario Outline: Regresar a la landing page desde una vista interna de navegación
    Given el usuario se encuentre en cualquier interfaz o panel interno de la plataforma
    When seleccione el logo o enlace principal mapeado en la cabecera como <elemento-click>
    Then debe poder regresar a la landing page informativa ubicándose en la sección <seccion-home>

    Examples: Elementos de cabecera
      | elemento-click  | seccion-home |
      | "Logo HuellaGo" | "Hero"       |
      | "Inicio"        | "Hero"       |

  Scenario Outline: Redirección automática al cerrar la cuenta desde el panel
    Given el usuario cierre sesión activamente desde el menú de configuración de su cuenta
    When finalice el proceso de desconexión en la interfaz de pantalla
    Then el sistema debe redirigirlo automáticamente a la landing page mostrando el botón <boton-visible>

    Examples: Elementos visibles
      | boton-visible |
      | "Registrarse" |

  Scenario Outline: Visualización completa de contenidos informativos al retornar
    Given la landing cargue nuevamente tras una navegación interna o retorno del usuario
    When el usuario navegue por ella de arriba hacia abajo observando la tarjeta <seccion-revisada>
    Then debe poder visualizar toda la información inicial del producto de forma clara

    Examples: Bloques informativos de la landing
      | seccion-revisada |
      | "Cómo Funciona"  |
      | "Instituciones"  |