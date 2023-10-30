Feature: HU04: Búsqueda de ideas de Decoración

    Como organizador de eventos, 
    quiero poder utilizar la plataforma para buscar ideas concretas y creativas de decoración 
    para mi próximo evento, con el fin de hacerlo más atractivo y único.

    Scenario: Búsqueda exitosa de ideas de decoración

    Given que soy un organizador de eventos
    When accedo a la plataforma y uso la función de búsqueda de decoración.
    And ingreso mis preferencias y detalles del evento.
    Then la plataforma debe recomendarme varias ideas de decoración relevantes y creativas.
    And debo poder ver detalles e imágenes de cada idea.

   Examples: Datos de entrada
        | sección "Búsqueda de decoración" | preferencias | detallles del evento |

    Examples: Datos de salida
        | mostrará ideas de decoración | detalles | imágenes|

    Scenario: Búsqueda sin resultados

    Given que soy un organizador de eventos.
    When accedo a la plataforma y uso la función de búsqueda de decoración.
    And ingreso criterios de búsqueda específicos que no coinciden con ninguna idea existente.
    Then la plataforma debe informarme que no se encontraron resultados para mi búsqueda.
    And debería ofrecerme sugerencias para ajustar mis criterios de búsqueda.

    Examples: Datos de entrada
        | sección "Búsqueda de decoración" |
        | criterios de búsqueda incorrectos |

    Examples: Datos de salida
        | muestra mensaje de error "No se encuentran resultados con su búsqueda" |
        | mensaje: ¿Desearía cambiar su mensaje de otra forma?  |
    
    
    