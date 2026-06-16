Feature: Registro de institución afiliada
  Como representante de una universidad o empresa,
  Quiero registrar mi institución dentro de HuellaGo,
  Para acceder a herramientas de monitoreo sostenible grupal.

  Scenario Outline: Completar el formulario de alta de organizaciones con éxito
    Given el representante acceda al portal institucional desde la sección de afiliación de la landing
    When complete el formulario de afiliación ingresando <nombre-institucion>, <tipo> y <pais>
    Then el sistema debe registrar la institución y cambiar el estado del registro a <estado-control>

    Examples: Entradas de organizaciones
      | nombre-institucion                 | tipo          | pais   | estado-control |
      | "Universidad de Lima"              | "Educativa"   | "Perú" | "Registrado"   |
      | "Universidad Peruana de Ciencias"  | "Educativa"   | "Perú" | "Registrado"   |

  Scenario Outline: Otorgar acceso administrativo con datos validados de la organización
    Given los datos institucionales sean correctos tras la validación de los campos de texto de la vista
    When confirme el registro seleccionando el botón con el texto "Enviar solicitud"
    Then debe habilitarse el acceso de gestión cargando la pantalla <pantalla-admin>

    Examples: Módulos de administración
      | pantalla-admin            |
      | "Dashboard Institucional"|

  Scenario Outline: Mostrar alertas en la interfaz ante parámetros de texto inválidos
    Given existan campos incompletos o inválidos en los parámetros críticos de la organización
    When intente registrarse presionando el botón de envío final del formulario
    Then el sistema debe mostrar alertas en la interfaz con el texto exacto <mensaje-error>

    Examples: Errores de alta institucional
      | mensaje-error                                                |
      | "El correo institucional es obligatorio y debe ser válido."  |