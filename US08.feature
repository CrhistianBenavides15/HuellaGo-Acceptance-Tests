Feature: Registro de hábitos de transporte
  Como usuario,
  Quiero ingresar información sobre mis hábitos de transporte,
  Para que el sistema considere este factor en el cálculo de mi huella de carbono.

  Scenario Outline: Almacenamiento exitoso de parámetros de movilidad
    Given el usuario acceda al formulario de hábitos de transporte en la pantalla de la aplicación
    When complete sus datos de transporte ingresando los valores <medio-transporte> y <distancia-km>
    Then el sistema debe guardarlos correctamente asociando la información a su perfil actual

    Examples: Parámetros de transporte (3 cifras significativas)
      | medio-transporte   | distancia-km |
      | "Autobús público"  | 15.5         |
      | "Auto particular"  | 45.2         |

  Scenario Outline: Añadir métricas de transporte al perfil ecológico de la cuenta
    Given que el usuario seleccione medios de transporte y frecuencia de uso en los menús desplegables
    When continúe hacia la siguiente pantalla del formulario ambiental presionando avanzar
    Then la información debe añadirse al perfil ambiental actualizando las métricas correspondientes

    Examples: Frecuencias de uso
      | frecuencia-uso |
      | "Diario"       |
      | "Semanal"      |

  Scenario Outline: Validar campos faltantes en el formulario de transporte
    Given el usuario deje campos incompletos en el formulario de movilidad de la pantalla
    When intente avanzar presionando el botón de guardado progresivo de la interfaz
    Then el sistema debe solicitar completar la información mostrando el aviso <error-pantalla>

    Examples: Mensajes de error en pantalla
      | error-pantalla                 |
      | "Por favor, complete los km." |