Feature: HU06: Control de presupuesto de evento

    Como organizador de eventos, 
    quiero utilizar la plataforma para llevar un registro detallado de mis gastos relacionados con la planificación de eventos, 
    para mantenerme dentro de mi presupuesto.

    Scenario: Registro exitoso de gastos

    Given que soy un organizador de eventos.
    When accedo a la plataforma y uso la función de control de presupuesto.
    And registro los gastos incurridos en la planificación del evento.
    Then la plataforma debe llevar un registro preciso de mis gastos 
    y mostrar un resumen actualizado.

    Examples: Datos de entrada
        | sección "Control de presupuesto" | registro gastos |

    Examples: Datos de salida
        | mostrar un resumen de gastos |
    
    Scenario: Alerta de presupuesto excedido

    Given que soy un organizador de eventos.
    When registro un gasto que hace que mi presupuesto se exceda.
    Then la plataforma debe mostrar una alerta visual indicando que mi presupuesto ha sido excedido.
    And debería ofrecerme opciones para ajustar mi presupuesto o considerar reducir los gastos

    Examples: Datos de entrada
        | registro de gastos realizado |

    Examples: Datos de salida
        | mensaje de alerta: "El gasto realizado hará que el presupuesto se exceda" |
        | debajo del mensaje, habrá opciones: "Ajustar presupuesto" o "Reducir gastos" |