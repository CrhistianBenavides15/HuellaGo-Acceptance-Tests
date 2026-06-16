Feature: Visualización de panel de recompensas
  Como usuario,
  Quiero visualizar un panel con mis puntos, nivel e insignias,
  Para consultar de manera centralizada mis logros obtenidos.

  Scenario Outline: Mostrar eco puntos, nivel e insignias centralizados
    Given que el usuario acceda al módulo de recompensas de la plataforma
    When cargue la pantalla principal de perfil de gamificación
    Then el sistema debe mostrar eco puntos, nivel e insignias en el bloque <bloque-recompensa>

    Examples: Bloques del panel
      | bloque-recompensa   |
      | "Resumen de Puntos" |
      | "Evolución de Rango"|
      | "Vitrina de Medallas"|

  Scenario Outline: Mostrar la información de logros actualizada
    Given que existan logros obtenidos recientemente en las rutinas de la cuenta
    When se visualice el panel general de premios en la pantalla
    Then la información debe mostrarse actualizada reflejando la métrica <valor-actual>

    Examples: Métricas de logros (3 cifras significativas)
      | valor-actual |
      | 150 puntos   |
      | 12.0 medallas|

  Scenario Outline: Mostrar mensaje motivacional ante ausencia de recompensas
    Given que el usuario aún no tenga recompensas ni puntos acumulados en su cuenta
    When acceda al panel de control de logros por primera vez
    Then debe mostrarse un mensaje motivacional en el fondo con el texto <texto-motivacion>

    Examples: Mensajes motivacionales
      | texto-motivacion                                                 |
      | "¡Empieza tu primer reto hoy y desbloquea tu primera insignia!"|