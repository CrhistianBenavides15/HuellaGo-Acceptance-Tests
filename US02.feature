Feature: Navegación hacia registró desde landing
  Como visitante,
  Quiero acceder al formulario de registro desde la landing page,
  Para comenzar a utilizar la aplicación fácilmente.

  Scenario Outline: Mostrar el formulario de creación de cuenta desde la landing page
    Given que el usuario se encuentra en la landing page de la plataforma
    When presione el botón con el texto <nombre-boton>
    Then el sistema debe mostrar el formulario de creación de cuenta en la pantalla

    Examples: Acciones de la interfaz
      | nombre-boton  |
      | "Registrarse" |

  Scenario Outline: Redirección desde el menú superior de la interfaz
    Given que el usuario visualiza el menú de navegación superior
    When seleccione la opción interactiva con el texto <opcion-menu>
    Then debe redirigirse correctamente hacia la vista del formulario de registro

    Examples: Opciones del menú
      | opcion-menu   |
      | "Crear cuenta"|

  Scenario Outline: Despliegue de mensaje ante inconvenientes en la navegación de la interfaz
    Given que ocurra un error de navegación en el cliente o navegador
    When el usuario intente acceder al formulario de registro desde cualquier enlace
    Then el sistema debe mostrar un mensaje informativo en pantalla con el texto <mensaje-error>

    Examples: Avisos del sistema
      | mensaje-error                                                      |
      | "No se pudo cargar la vista de registro. Intente de nuevo por favor"|