Feature: HU07: Gestión de invitados

    Como organizador de eventos, 
    quiero poder gestionar mi lista de invitados de manera eficiente a través de la plataforma, 
    para asegurarme de que todos los invitados reciban la información necesaria y que el acceso al evento sea controlado.

    Scenario: Creación de Lista de Invitados

    Given que soy un organizador de eventos.
    When accedo a la plataforma y selecciono la función de gestión de invitados.
    And creo una lista de invitados ingresando nombres y direcciones de correo electrónico.
    Then la plataforma debe permitirme guardar la lista de invitados para su posterior uso.

    Examples: Datos de entrada
        | sección "Gestión de invitados" |
        | creación de lista de invitados | nombre | correo electrónico |

    Examples: Datos de salida
        | mensaje de confirmación: ¿Desea guardar la lista de invitados? | 
        | desplegará opción de "Guardar listado" |
    
    Scenario: Enviar Invitaciones Electrónicas

    Given que soy un organizador de eventos con una lista de invitados creada en la plataforma.
    When quiero enviar invitaciones electrónicas a los invitados.
    Then la plataforma debe permitirme seleccionar la lista de invitados y enviar automáticamente 
    invitaciones por correo electrónico con detalles del evento y confirmación de asistencia.

    Examples: Datos de entrada
        | sección "Gestión de invitados" |
        | listas generadas con anterioridad |

    Examples: Datos de salida
        | mensaje: "¿Desea enviar las invitaciones a su listado generado?" |
        | desplegará opción de "Enviar invitaciones" |