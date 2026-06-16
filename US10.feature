Feature: Registro de hábitos de alimentación y residuos
  Como usuario,
  Quiero ingresar datos sobre mi alimentación y generación de residuos,
  Para completar la configuración inicial de mi perfil ambiental.

  Scenario Outline: Finalizar la inserción de datos del bloque de residuos
    Given el usuario complete la sección de alimentación y residuos seleccionando <tipo-dieta> y <reciclaje>
    When guarde la información presionando el botón de guardado permanente de la interfaz
    Then el sistema debe finalizar la configuración inicial completando el estado de la cuenta

    Examples: Parámetros de alimentación y desecho
      | tipo-dieta | reciclaje |
      | "Vegana"   | "Sí"      |
      | "Omnívora" | "No"      |

  Scenario Outline: Redirección al generador de resultados de huella
    Given el usuario termine de registrar todos sus hábitos en las pantallas requeridas de la plataforma
    When seleccione la acción de cálculo presionando el botón con el texto <accion-calculo>
    Then debe ser redirigido al resultado inicial mostrando la pantalla de métricas consolidada

    Examples: Acciones de cálculo
      | accion-calculo     |
      | "Calcular huella"  |

  Scenario Outline: Bloqueo de finalización por datos faltantes en el paso de residuos
    Given existan datos faltantes o casillas obligatorias sin marcar en las preguntas de desechos
    When intente finalizar seleccionando el botón de cálculo final de la vista
    Then el sistema debe solicitar completar el formulario arrojando el mensaje de aviso <aviso>

    Examples: Avisos de completitud
      | aviso                                                         |
      | "Falta especificar la frecuencia de reciclaje de plásticos." |