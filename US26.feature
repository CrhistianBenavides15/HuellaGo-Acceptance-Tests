Feature: Incremento de nivel ambiental
  Como usuario,
  Quiero subir de nivel según mis eco puntos acumulados,
  Para sentir progreso constante dentro de la aplicación.

  Scenario Outline: Subir automáticamente de nivel al alcanzar el puntaje
    Given que el usuario alcance el puntaje mínimo requerido para el siguiente rango
    When el sistema procese sus eco puntos en la barra de progreso de la pantalla
    Then debe subirlo automáticamente de nivel actualizando el indicador a <nuevo-nivel>

    Examples: Niveles ambientales
      | nuevo-nivel       |
      | "Explorador Verde"|
      | "Guardián Eco"    |

  Scenario Outline: Visualizar el rango actual en el perfil de progreso
    Given el usuario consulte su perfil de progreso general en la aplicación
    When acceda a la sección de nivel e hitos en la pantalla
    Then debe visualizar su rango actual destacado mediante el texto informativo <rango-texto>

    Examples: Textos de rango
      | rango-texto        |
      | "Nivel 03 — Activo"|
      | "Nivel 05 — Máximo"|

  Scenario Outline: Mostrar el progreso faltante para el siguiente nivel
    Given que el usuario aún no alcance el mínimo de puntos para subir de escalafón
    When consulte el sistema de niveles en el panel de recompensas
    Then debe mostrarse el progreso faltante indicando el <porcentaje-restante> para avanzar

    Examples: Porcentajes de nivel (3 cifras significativas)
      | porcentaje-restante |
      | 45.0%               |
      | 12.5%               |