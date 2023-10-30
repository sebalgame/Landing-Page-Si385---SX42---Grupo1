Feature: HU11: Calificación y reseñas de eventos

    Como usuario interesado en eventos, 
    quiero poder buscar eventos de acuerdo con mis gustos e intereses, y asistir a ellos, sin necesidad de tener una membresía en la plataforma, 
    para disfrutar de experiencias culturales y sociales.

    Scenario: Calificación de Evento

    Given que soy un usuario que ha asistido a un evento a través de la plataforma.
    When accedo a los detalles del evento después de asistir.
    And deseo calificar el evento.
    Then la plataforma debe permitirme otorgar una calificación, por ejemplo, en una escala del 1 al 5, al evento.

    Examples: Datos de entrada
        | sección "Detalles del evento" |

    Examples: Datos de salida
        | despliega opción "Calificar evento asistido" |
        | opción de calificar entre 1 y 5 estrelllas  |

    Scenario: Dejar una Reseña

    Given que soy un usuario que ha asistido a un evento a través de la plataforma.
    When accedo a los detalles del evento después de asistir.
    And deseo dejar una reseña detallada sobre mi experiencia.
    Then la plataforma debe proporcionarme un espacio para escribir una reseña y compartir mi opinión sobre el evento.

    Examples: Datos de entrada
        | sección "Detalles del evento" |

    Examples: Datos de salida
        | despliega opción "Reseña acerca de su experiencia del evento" |
        | espacio donde podrá escribir su opinión |

    Scenario: Visualización de Calificaciones y Reseñas

    Given que soy un usuario interesado en asistir a un evento.
    When busco eventos en la plataforma.
    Then la plataforma debe mostrar calificaciones promedio y resúmenes de reseñas para cada evento, 
    para ayudarme a tomar decisiones informadas sobre cuáles eventos asistir.

    Examples: Datos de entrada
        | sección "Búsqueda de eventos" |

    Examples: Datos de salida
        | mostrará calificaciones |
        | mostrará reseñas |
        