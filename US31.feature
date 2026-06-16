Feature: Generación de recomendaciones inteligentes
  Como usuario,
  Quiero recibir recomendaciones ecológicas personalizadas según mis hábitos registrados,
  Para reducir mi huella de carbono de manera práctica.

  Scenario Outline: Generar recomendaciones personalizadas según hábitos
    Given que el usuario cuente con hábitos ambientales registrados en su cuenta
    When el sistema procese la información declarada en los formularios
    Then debe generar recomendaciones personalizadas mostrando el bloque <bloque-sugerencia>

    Examples: Bloques de sugerencias
      | bloque-sugerencia        |
      | "Sugerencias de Energía"  |
      | "Sugerencias de Traslado" |

  Scenario Outline: Vincular sugerencias con los principales focos de impacto
    Given que existen datos suficientes del perfil ambiental del usuario
    When se calcule su huella consolidada en la interfaz de pantalla
    Then las sugerencias deben estar relacionadas con sus principales focos de impacto detallando la prioridad <nivel-prioridad>

    Examples: Niveles de prioridad
      | nivel-prioridad |
      | "Crítica"       |
      | "Media"         |
      | "Baja"          |

  Scenario Outline: Solicitar completitud de datos ante perfiles incompletos
    Given que no existan datos completos dentro de las variables de la cuenta
    When se intente generar recomendaciones automáticas en el módulo correspondiente
    Then el sistema debe solicitar completar la información mostrando en pantalla la alerta <mensaje-alerta>

    Examples: Mensajes de alerta de datos
      | mensaje-alerta                                                      |
      | "Perfil incompleta. Complete los cuestionarios para ver consejos."  |