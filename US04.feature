Feature: Inicio de sesión
  Como usuario registrado,
  Quiero iniciar sesión con mis credenciales,
  Para ingresar a mi cuenta y continuar mi seguimiento ambiental.

  Scenario Outline: Redirección de usuario con credenciales válidas
    Given que el usuario ingrese su correo y contraseña válidos en los campos de texto
    When presione el botón con el texto <nombre-boton>
    Then el sistema debe redirigirlo a la pantalla correspondiente marcando el destino <ruta-destino>

    Examples: Flujos de destino
      | nombre-boton     | ruta-destino  |
      | "Iniciar sesión" | "Onboarding"  |
      | "Iniciar sesión" | "Dashboard"   |

  Scenario Outline: Despliegue de error ante credenciales incorrectas en la interfaz
    Given que el usuario ingrese credenciales de autenticación incorrectas o no registradas
    When intente acceder al panel de la aplicación presionando el botón de ingreso
    Then el sistema debe mostrar un mensaje de error en la interfaz con el texto <texto-error>

    Examples: Mensajes de denegación
      | texto-error                                            |
      | "Correo o contraseña incorrectos. Intente nuevamente."|

  Scenario Outline: Solicitar información faltante en campos obligatorios de acceso
    Given que el usuario no complete los campos obligatorios del formulario de acceso
    When seleccione iniciar sesión dejando el cuadro de texto vacío
    Then el sistema debe solicitar la información faltante resaltando el indicador <campo-vacio>

    Examples: Indicadores de texto
      | campo-vacio  |
      | "Contraseña" |
      | "Correo"     |