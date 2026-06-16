Feature: Visualización de onboarding introductorio
  Como usuario nuevo,
  Quiero visualizar una guía introductoria sobre el funcionamiento de HuellaGo,
  Para comprender cómo la aplicación me ayudará a reducir mi huella de carbono.

  Scenario Outline: Mostrar el onboarding introductorio tras el registro exitoso
    Given que el usuario ingrese por primera vez a la aplicación móvil o web
    When acceda a las pantallas privadas inmediatamente tras registrarse correctamente
    Then el sistema debe mostrar el onboarding introductorio cargando la guía visual <nombre-guia>

    Examples: Componentes del onboarding
      | nombre-guia          |
      | "Guía de bienvenida" |

  Scenario Outline: Navegación secuencial por los pasos de la guía introductoria
    Given que el usuario navegue por el contenido interactivo del onboarding
    When presione el botón de avance con el texto <nombre-boton>
    Then debe visualizar la siguiente explicación detallada en la pantalla de la interfaz

    Examples: Controles de avance
      | nombre-boton |
      | "Siguiente"  |

  Scenario Outline: Redirección final del onboarding a la configuración inicial del perfil
    Given que el usuario finalice de revisar todas las pantallas explicativas del onboarding
    When seleccione la opción definitiva con el texto <nombre-opcion>
    Then debe ser redirigido a la pantalla de configuración inicial para el registro de hábitos

    Examples: Opciones de finalización
      | nombre-opcion |
      | "Continuar"   |