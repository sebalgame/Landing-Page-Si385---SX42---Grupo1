Feature: HU13: Compartir eventos en redes sociales

    Como usuario de la plataforma, 
    quiero poder compartir eventos interesantes en mis redes sociales, 
    para invitar a mis amigos y promover eventos que me gusten.

    Scenario: Compartir un Evento en Redes Sociales

    Given que soy un usuario interesado en un evento.
    When accedo a los detalles del evento.
    And quiero compartir el evento en mis redes sociales.
    Then la plataforma debe proporcionarme opciones para compartir el evento en plataformas 
    populares como Facebook, Twitter y Linkedin.

    Examples: Datos de entrada
        | sección "Detalles del evento" |

    Examples: Datos de salida
        | ícono de compartir evento | Facebook | Twitter | Linkedin |