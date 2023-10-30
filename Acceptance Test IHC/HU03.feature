Feature: HU03: Compra de membresía

    Como usuario interesado en obtener beneficios adicionales en la plataforma, 
    quiero poder comprar una membresía premium 
    para acceder a funciones exclusivas, con el fin de mejorar mi experiencia como usuario.

    Scenario: Compra exitosa de membresía

    Given que soy un usuario registrado en la plataforma
    When accedo a la página de membresías y selecciono la membresía premium que deseo comprar
    And proporciono la información de pago válida, como número de tarjeta de crédito y fecha de vencimiento
    And confirmo la compra haciendo clic en el botón ¨Comprar¨
    Then el sistema debe procesar la transacción de manera exitosa.
    And debería recibir una confirmación de que mi membresía premium ha sido activada.
    And debería tener acceso inmediato a las funciones exclusivas de la membresía premium.

    Examples: Datos de entrada
        | sección "membresías" | membresía premium |
        | información de pago  | número de tarjeta | fecha de vencimiento | CVV |
        | botón "Comprar"  |

    Examples: Datos de salida
        | mensaje de confirmación: "Tu membresía premium ha sido activada con éxito" |
    
    Scenario: Verificación de membresía para anfitriones

    Given que soy un usuario registrado en la plataforma con una membresía para anfitrión activa
    When accedo a la plataforma
    Then el sistema debe reconocer mi membresía para anfitriones y permitirme acceder a las funciones exclusivas 
    sin solicitar pagos adicionales
    And debería ver un indicador visual que muestre que tengo una membresía para anfitriones activa.

    Examples: Datos de entrada
        | accedo a plataforma | membresía para anfitrión |

    Examples: Datos de salida
        | sistema debe reconocer la membresía | 
        | mensaje: "Membresía de anfitrión activa" |
    
    Scenario: Verificación de membresía normal

    Given que soy un usuario registrado en la plataforma con una membresía normal activa.
    When accedo a la plataforma
    Then el sistema debe reconocer mi membresía normal y permitirme acceder a las funciones exclusivas 
    sin solicitar pagos adicionales
    And debería ver un indicador visual que muestre que tengo una membresía normal activa.
    
    Examples: Datos de entrada
        | accedo a plataforma | membresía normal |

    Examples: Datos de salida
        | sistema debe reconocer la membresía | 
        | mensaje: "Membresía normal activa" |
    
    Scenario: Fallo en la compra de membresía

    Given que soy un usuario registrado en la plataforma.
    When accedo a la página de membresías y selecciono la membresía premium que deseo comprar.
    And proporcionó información de pago incorrecta o inválida.
    And confirmó la compra haciendo clic en el botón ¨Comprar¨.
    Then el sistema debe mostrar un mensaje de error indicando que la 
    transacción de compra ha fallado debido a la información de pago incorrecta.
    And debería tener la opción de corregir la información de pago y volver a intentar la compra.

    Examples: Datos de entrada
        | sección "membresías" | membresía premium |
        | información de pago incorrecta  | número de tarjeta incorrecto | fecha de vencimiento incorrecta | CVV incorrecto |
        | botón "Comprar"  |

    Examples: Datos de salida
        | mensaje de error: "Su transacción de compra no se ha realizado con éxito" |
        | opción "Volver a intentar" |

    Scenario: Cancelación de membresía premium

    Given que soy un usuario con una membresía activa.
    When accedo a la página de configuración de membresía.
    And selecciono la opción para cancelar mi membresía.
    Then el sistema debe procesar la cancelación de mi membresía y 
    cambiar mi estado a usuario estándar al final del periodo de membresía actual.
    And debería recibir una confirmación de que mi membresía ha sido cancelada.

    Examples: Datos de entrada
        | sección "configuración de membresía" |
        | opción "cancelar mi membresía"  |
    
    Examples: Datos de salida
        | mensaje: "Su membresía premium ha sido cancelada" |