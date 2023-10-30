Feature: HU08: Programación de eventos

    Como organizador de eventos, 
    quiero utilizar la plataforma para programar eventos y definir fechas, horarios y ubicaciones, 
    para asegurarme de que todo esté organizado y coordinado.

    Scenario: Creación de Evento

    Given que soy un organizador de eventos.
    When accedo a la plataforma y selecciono la función de programación de eventos.
    And creo un nuevo evento ingresando detalles como nombre, fecha, hora y ubicación.
    Then la plataforma debe permitirme guardar la información del evento.
    
    Examples: Datos de entrada
        | sección "programación de eventos" | 
        | creación de un evento  | nombre  | fecha | hora | ubicación |

    Examples: Datos de salida
        | mensaje de confirmación: ¿Desea guardar la información del evento? | 
        | desplegará opción de "Guardar evento" |

    Scenario: Recordatorios y Alertas
    
    Given que soy un organizador de eventos con eventos programados en la plataforma.
    When se acerca la fecha de un evento.
    Then la plataforma debe enviarme recordatorios y alertas 
    para asegurarse de que no se me olvide ningún detalle.

    Examples: Datos de entrada
        | sección "programación de eventos" |
        | eventos programados con anterioridad |

    Examples: Datos de salida
        | recordatorio del evento cercano |