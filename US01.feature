Feature: Registro de usuario
  Como usuario interesado en sostenibilidad,
  Quiero visualizar una landing page informativa de HuellaGo,
  Para conocer los beneficios y funcionalidades principales antes de registrarme.

  Scenario Outline: Visualización de información general de la aplicación
    Given que el usuario ingresa al sitio web de HuellaGo
    When cargue la página principal de la plataforma
    Then el sistema debe mostrar información general sobre la aplicación detallando el <contenido-vista>

    Examples: Elementos informativos de la interfaz
      | contenido-vista        |
      | "Resumen de impacto"   |
      | "Mensaje de bienvenida"|

  Scenario Outline: Observación de beneficios, funcionalidades y maquetas de la interfaz
    Given que el usuario visualiza la landing page informativa
    When navegue por sus diferentes secciones de arriba hacia abajo
    Then debe poder observar beneficios, funcionalidades y los componentes de <seccion-vista>

    Examples: Secciones de la landing page
      | seccion-vista     |
      | "Beneficios"      |
      | "Funcionalidades" |
      | "Vistas de diseño"|

  Scenario Outline: Redirección al formulario de creación de cuenta
    Given que el usuario se interese en utilizar la aplicación de HuellaGo
    When seleccione el botón con el texto <nombre-boton>
    Then debe ser redirigido inmediatamente a la vista de registro de usuario

    Examples: Botones de redirección
      | nombre-boton     |
      | "Comenzar ahora" |