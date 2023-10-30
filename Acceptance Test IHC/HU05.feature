Feature: Selección de proveedores confiables

    Como organizador de eventos, 
    quiero poder encontrar proveedores confiables de decoración, utilería y comida en mi área a través de la plataforma, 
    para asegurarme de que mi evento sea un éxito sin problemas.

    Scenario: Búsqueda y selección exitosa de proveedores

    Given que soy un organizador de eventos.
    When accedo a la plataforma y busco proveedores recomendados por MorphEvents.
    And veo una lista de proveedores verificados y sus servicios.
    Then debo poder seleccionar a un proveedor de mi elección.
    And debo poder contactar al proveedor directamente a través de la plataforma.

    Examples: Datos de entrada
        | proovedores recomendados | 
        | muestra lista de proovedores verificados|  servicios |

    Examples: Datos de salida
        | seleccionar en una casilla al proovedor de elección |
        | opción de "Llamar al proovedor" |
    
    Scenario: Comparación de Proveedores

    Given que soy un organizador de eventos.
    When accedo a la plataforma y selecciono a varios proveedores verificados.
    And comparo los servicios, precios y calificaciones de cada proveedor.
    Then debería poder tomar una decisión informada sobre cuál proveedor 
    se ajusta mejor a mis necesidades

    Examples: Datos de entrada
        | selecciono en las casillas a varios proovedores |
        | mostrará de lo seleccionado sus servicios | precios | calificación|

    Examples: Datos de salida
        | me comparará los ítems seleccionados |
        | mensaje: "Este proovedor se ajusta a sus necesidades" |
    
    Scenario: Comunicación con el Proveedor

    Given que soy un organizador de eventos que ha seleccionado a un proveedor en la plataforma.
    When quiero obtener más información o aclarar detalles con el proveedor.
    Then debería poder comunicarme con el proveedor directamente a través de 
    un sistema de mensajería en la plataforma

    Examples: Datos de entrada
        | selecciono al proovedor de mi elección |
        | información que se visualiza no es clara |

    Examples: Datos de salida
        | opción de "mensajería directa con el proovedor" |
    