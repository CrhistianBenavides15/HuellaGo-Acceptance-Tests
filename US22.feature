Feature: Aceptación de reto ecológico
  Como usuario,
  Quiero aceptar un reto ecológico dentro de la aplicación,
  Para comprometerme a cumplir una acción sostenible.

  Scenario Outline: Registrar un reto como activo en la interfaz
    Given que el usuario visualice un reto disponible en la lista
    When seleccione el botón con el texto <accion-boton>
    Then el sistema debe registrarlo como activo en su panel de seguimiento

    Examples: Acciones de aceptación
      | accion-boton  |
      | "Aceptar reto"|

  Scenario Outline: Impedir la activación de retos duplicados
    Given que el reto ya se encuentre aceptado y vigente en la cuenta del usuario
    When el usuario intente activarlo nuevamente desde cualquier sección
    Then el sistema debe impedir duplicados manteniendo una única instancia del desafío

    Examples: Estados de control
      | estado-desafio |
      | "Activo"       |

  Scenario Outline: Confirmación visual de aceptación exitosa
    Given que el usuario acepte correctamente el reto de la lista
    When se procese la acción de manera interna en la interfaz
    Then debe mostrarse una confirmación visual en la pantalla con el texto <texto-confirmacion>

    Examples: Mensajes de confirmación
      | texto-confirmacion                         |
      | "¡Reto aceptado! Empieza a sumar puntos." |