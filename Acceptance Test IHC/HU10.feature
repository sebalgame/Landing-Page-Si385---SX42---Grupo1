Feature: HU10: Búsqueda y Asistencia a Eventos

    Como usuario interesado en eventos, 
    quiero poder buscar eventos de acuerdo a mis gustos e intereses, y asistir a ellos, sin necesidad de tener una membresía en la plataforma, 
    para disfrutar de experiencias culturales y sociales.

    Scenario: Búsqueda de Eventos

    Given que soy un usuario que no tiene una membresía en la plataforma.
    When accedo a la plataforma y selecciono la función de búsqueda de eventos.
    And especifico mis preferencias y categorías de eventos de interés, como música en vivo, arte, deportes, etc.
    Then la plataforma debe mostrarme una lista de eventos que coincidan con mis preferencias 
    y categorías seleccionadas.

    Examples: Datos de entrada
        | botón "búsqueda de eventos" | 
        | agrego preferencias y categorías de eventos  | música en vivo  |

    Examples: Datos de salida
        | mostrará listado de eventos según lo colocado |

    Scenario: Detalles del Evento y Asistencia

    Given que soy un usuario que ha encontrado un evento de interés en la plataforma.
    When hago clic en un evento para obtener más detalles.
    And decido asistir al evento.
    Then la plataforma debe permitirme confirmar mi asistencia al evento.
    And debería recibir información relevante sobre el evento, como la ubicación, la fecha y la hora.

    Examples: Datos de entrada
        | botón "búsqueda de eventos" | 
        | selecciono evento recomendado | detalles que contempla  |

    Examples: Datos de salida
        | mensaje de confirmación: ¿Desea asistir a a este evento? |
        | desplegará opción de "Asistencia a evento confirmado"|
        | mostrar detalles del evento en cuestión |

    Scenario: Recepción de Actualizaciones de Eventos

    Given que soy un usuario sin membresía que ha confirmado mi asistencia a un evento.
    When se acerca la fecha del evento.
    Then la plataforma debe enviarme recordatorios y actualizaciones relacionados con el evento, 
    como cambios de horario o ubicación.

    Examples: Datos de entrada
        | botón "Asistencia a evento confirmado" |

    Examples: Datos de salida
        | recordatorios | 
        | actualizaciones | cambio de horario | ubicación|