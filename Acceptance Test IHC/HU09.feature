Feature: HU09: Gestión de tendencias de eventos

    Como organizador de eventos, 
    quiero recibir recomendaciones y actualizaciones sobre las últimas tendencias en la planificación de eventos a través de la plataforma, 
    para mantener mis eventos actualizados y atractivos.

    Scenario: Recepción de Actualizaciones de Tendencias

    Given que soy un organizador de eventos.
    Cuando accedo a la plataforma.
    Y navego por la sección de tendencias de eventos.
    Entonces la plataforma debe proporcionarme información actualizada sobre las últimas tendencias 
    en decoración, entretenimiento y otros aspectos de la planificación de eventos.

    Examples: Datos de entrada
        | sección "tendencias de eventos" |

    Examples: Datos de salida
        | muestra enlaces de últimas tendencias |

    Scenario: Integración de Tendencias en la Planificación
    
    Given que soy un organizador de eventos que ha obtenido información sobre las 
    últimas tendencias a través de la plataforma.
    When planifico un evento.
    Then la plataforma debe permitirme integrar estas tendencias de 
    manera fácil en la planificación de mi evento.

    Examples: Datos de entrada
        | sección "tendencias de eventos" |
        | observa enlaces de las tendencias |

    Examples: Datos de salida
        | opción "Integrar tendencias al evento que desee crear" |