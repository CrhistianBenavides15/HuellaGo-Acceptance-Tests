Feature: Registro de hábitos de consumo energético
  Como usuario,
  Quiero ingresar información sobre mi consumo energético diario,
  Para obtener una medición ambiental más precisa.

  Scenario Outline: Guardar datos de consumo de energía doméstico
    Given el usuario se encuentre en la sección de energía del formulario de perfil en la interfaz
    When registre su consumo doméstico ingresando los valores numéricos de <monto-kwh> de electricidad
    Then el sistema debe almacenar los datos vinculándolos directamente a su cuenta

    Examples: Valores de consumo energético (3 cifras significativas)
      | monto-kwh |
      | 120       |
      | 245       |

  Scenario Outline: Transición fluida a la siguiente categoría del perfil ambiental
    Given el usuario complete satisfactoriamente los campos numéricos de consumo de energía
    When presione la opción de avance con el texto <boton-siguiente>
    Then debe pasar a la siguiente categoría cargando la vista correspondiente en pantalla

    Examples: Navegación de formularios
      | boton-siguiente |
      | "Continuar"     |

  Scenario Outline: Control de entradas numéricas inválidas en los campos de energía
    Given los datos ingresados sean inválidos o presenten un <valor-energia> negativo
    When intente guardarlos mediante la acción de envío del formulario de energía
    Then el sistema debe mostrar un mensaje de validación con el texto exacto <mensaje-validacion>

    Examples: Validaciones de energía
      | valor-energia | mensaje-validacion                                       |
      | -45.0         | "El valor ingresado de kWh debe ser un número positivo" |