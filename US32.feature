Feature: Visualización de lista de recomendaciones
  Como usuario,
  Quiero visualizar una lista ordenada de recomendaciones sostenibles,
  Para identificar fácilmente acciones de mejora.

  Scenario Outline: Mostrar lista de sugerencias disponibles en pantalla
    Given que el usuario acceda al módulo de recomendaciones de la aplicación
    When cargue la pantalla principal de consejos ecológicos
    Then el sistema debe mostrar una lista de sugerencias disponibles en la vista <vista-lista>

    Examples: Tipos de vista de lista
      | vista-lista              |
      | "Panel de Consejos"      |
      | "Feed de Sustentabilidad"|

  Scenario Outline: Despliegue claro y ordenado de múltiples recomendaciones
    Given que existen múltiples recomendaciones vigentes en la plataforma
    When se visualicen las tarjetas en la interfaz de usuario de forma simultánea
    Then deben mostrarse de manera clara y ordenada enumerando la <posicion-tarjeta> correspondiente

    Examples: Posiciones en la interfaz (3 cifras significativas)
      | posicion-tarjeta   |
      | "Posición 1.00"    |
      | "Posición 2.00"    |
      | "Posición 3.00"    |

  Scenario Outline: Mensaje informativo ante ausencia de sugerencias generadas
    Given que no existan sugerencias generadas para las métricas del usuario
    When el usuario consulte esta sección específica en la pantalla
    Then debe visualizar un mensaje informativo con el texto <texto-informativo>

    Examples: Mensajes de ausencia de sugerencias
      | texto-informativo                                                |
      | "Por el momento no hay sugerencias creadas para tu perfil."      |