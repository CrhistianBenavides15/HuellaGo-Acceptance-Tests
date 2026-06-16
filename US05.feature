Feature: Recuperación de contraseña
  Como usuario,
  Quiero recuperar mi contraseña mediante mi correo electrónico,
  Para volver a acceder a mi cuenta en caso de olvido.

  Scenario Outline: Envío del enlace de recuperación de acceso
    Given que el usuario seleccione la opción interactiva con el texto <opcion-recuperar>
    When ingrese su dirección de correo electrónico registrado en el cuadro de texto
    Then el sistema debe enviar un enlace de recuperación de forma automática a su bandeja

    Examples: Opciones de interfaz
      | opcion-recuperar       |
      | "Olvidé mi contraseña" |

  Scenario Outline: Notificación ante solicitudes con correos no registrados
    Given que el correo electrónico ingresado en la interfaz no exista en el sistema de cuentas
    When el usuario solicite la recuperación de acceso presionando el botón de envío
    Then el sistema debe mostrar un mensaje informativo en pantalla con el texto <aviso-pantalla>

    Examples: Mensajes de control
      | aviso-pantalla                                              |
      | "El correo no se encuentra registrado en nuestra plataforma."|

  Scenario Outline: Actualización correcta de la nueva contraseña de cuenta
    Given que el usuario acceda al enlace enviado a su bandeja de entrada
    When registre una nueva contraseña válida que cumpla con los requisitos visuales
    Then el sistema debe actualizarla correctamente en su perfil de usuario
    And debe permitirle el acceso con la nueva clave en la pantalla de inicio de sesión

    Examples: Estados de contraseña
      | estado-clave |
      | "Actualizada"|