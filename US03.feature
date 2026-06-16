Feature: Registro de usuario
  Como usuario nuevo,
  Quiero crear una cuenta en HuellaGo ingresando mis datos personales,
  Para acceder a las funcionalidades de la aplicación.

  Scenario Outline: Almacenamiento exitoso de la información de cuenta
    Given que el usuario completa los campos del formulario de registro con datos válidos
    When presione el botón con el texto <nombre-boton>
    Then el sistema debe almacenar la información de la cuenta en su perfil personal
    And debe permitir el acceso inmediato redirigiendo a la pantalla de bienvenida

    Examples: Botones de confirmación
      | nombre-boton   |
      | "Crear cuenta" |

  Scenario Outline: Validación de campos vacíos o datos inválidos en el formulario
    Given existan campos obligatorios vacíos o datos con formato inválido en la interfaz
    When el usuario intente registrarse presionando el botón de creación de cuenta
    Then el sistema debe mostrar mensajes de validación indicando el error <mensaje-validacion>

    Examples: Validaciones de campos
      | mensaje-validacion                       |
      | "La contraseña debe tener 8 caracteres." |
      | "Por favor, complete todos los campos."  |

  Scenario Outline: Impedir el registro de correos electrónicos duplicados
    Given que el correo ingresado en el formulario ya se encuentre registrado en otra cuenta activa
    When el usuario intente crear una cuenta con ese mismo identificador
    Then el sistema debe impedir el registro en la interfaz
    And debe notificarlo mostrando en pantalla la alerta <alerta-usuario>

    Examples: Alertas de duplicidad
      | alerta-usuario                                           |
      | "El correo electrónico ya está en uso por otro usuario." |