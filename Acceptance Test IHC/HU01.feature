Feature: HU01: Registrar Usuario

    Como usuario de la aplicación, 
    quiero poder registrarme 
    para tener una cuenta en la aplicación.

    Scenario: Registro exitoso

    Given que un nuevo usuario accede a la pantalla de registro
    When completa correctamente todos los campos requeridos, 
    incluyendo nombre, dirección de correo electrónico y contraseña
    And hace clic en el botón ¨Enviar¨ para enviar el formulario
    Then el sistema mostrará una confirmación visual que indique que la cuenta del 
    nuevo usuario ha sido creada correctamente
    
    Examples: Datos de entrada
        | pantalla de registro |
        | completa campos | nombre | correo electrónico | contraseña |
        | botón "Enviar" |

    Examples: Datos de salida
        | mensaje de confirmación: "la cuenta del usuario ha sido creada correctamente" |

    Scenario: Validación de campos con dato inválido

    Given que un nuevo usuario accede a la pantalla de registro
    When completa los campos requeridos, pero algunos de ellos contienen información incorrecta,
    como un nombre incorrecto, dirección de correo electrónico incorrecta y contraseña débil
    And hace clic en el botón ¨Enviar¨ para enviar el formulario
    Then el sistema mostrará mensajes de error descriptivos para cada campo con dato inválido, 
    indicando el motivo específico del error.

    Examples: Datos de entrada
        | pantalla de registro |
        | completa campos incorrectamente | nombre incorrecto | correo electrónico incorrecto | contraseña débil |
        | botón "Enviar" |

    Examples: Datos de salida
        | mensaje de error para cada campo |
  