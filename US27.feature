Feature: Obtención de insignias ecológicas
  Como usuario,
  Quiero desbloquear insignias por mis logros ambientales,
  Para recibir reconocimiento visual por mis acciones sostenibles.

  Scenario Outline: Otorgar insignias al cumplir condiciones especiales
    Given que el usuario complete retos específicos de una categoría ambiental
    When cumpla condiciones especiales de constancia registradas en la aplicación
    Then el sistema debe otorgar una insignia agregando al perfil la medalla <nombre-insignia>

    Examples: Tipos de insignias
      | nombre-insignia    |
      | "Héroe del Pedal"  |
      | "Ahorrador Eléctrico"|

  Scenario Outline: Visualizar colección de insignias obtenidas y bloqueadas
    Given que el usuario acceda a su colección de logros en el módulo correspondiente
    When visualice la sección de insignias en la pantalla de la aplicación
    Then debe observar las obtenidas y las bloqueadas con el indicador de estado <estado-insignia>

    Examples: Estados de insignias
      | estado-insignia |
      | "Desbloqueada"  |
      | "Bloqueada"     |

  Scenario Outline: Mostrar notificación visual al desbloquear un logro
    Given que una insignia sea desbloqueada tras completar las tareas requeridas
    When ocurra el evento de logro en la interfaz de la pantalla
    Then el sistema debe mostrar una notificación visual emergente con el mensaje <texto-notificacion>

    Examples: Notificaciones de medallas
      | texto-notificacion                                       |
      | "¡Nueva insignia desbloqueada! Revisa tu vitrina de logros."|