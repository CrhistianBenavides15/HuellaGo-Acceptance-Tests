Feature: Visualización de dashboard principal
  Como usuario,
  Quiero acceder a un dashboard principal con el resumen de mi desempeño ambiental,
  Para consultar rápidamente mi situación actual dentro de HuellaGo.

  Scenario Outline: Mostrar el dashboard con información resumida
    Given que el usuario finalice el cálculo inicial de su huella
    When ingrese al panel principal de la aplicación
    Then el sistema debe mostrar el dashboard con la información resumida en el contenedor <seccion-resumen>

    Examples: Bloques de resumen
      | seccion-resumen      |
      | "Panel de EcoPuntos" |
      | "Métricas de Mes"    |

  Scenario Outline: Visualizar accesos principales del producto
    Given que el dashboard cargue correctamente en la pantalla
    When el usuario visualice la pantalla de navegación principal
    Then debe observar accesos interactivos dirigidos a <acceso-modulo>

    Examples: Accesos de navegación
      | acceso-modulo     |
      | "Huella"          |
      | "Recomendaciones" |
      | "Retos"           |
      | "Comunidad"       |

  Scenario Outline: Despliegue de error informativo ante fallas de carga
    Given que ocurra un error de carga de componentes en la pantalla
    When el usuario acceda al dashboard principal
    Then el sistema debe mostrar un mensaje informativo con el texto <texto-aviso>

    Examples: Avisos de la interfaz
      | texto-aviso                                                   |
      | "No se pudo cargar la información. Deslice para actualizar." |