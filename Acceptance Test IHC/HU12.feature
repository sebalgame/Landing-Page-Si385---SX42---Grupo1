Feature: HU12: Sugerencias personalizadas de eventos

    Como usuario de la plataforma, 
    quiero recibir sugerencias personalizadas de eventos basadas en mis preferencias y actividades pasadas, 
    para descubrir eventos que se adapten a mis intereses.

    Scenario: Recepción de Sugerencias Personalizadas

    Given que soy un usuario registrado en la plataforma.
    When accedo a la plataforma.
    And navego por la sección de sugerencias personalizadas.
    Then la plataforma debe mostrar eventos recomendados que se basan en mis preferencias anteriores, 
    historial de asistencia y calificaciones.

    Examples: Datos de entrada
        | sección "Sugerencias personalizadas" |

    Examples: Datos de salida
        | mostrar eventos recomendados | preferencias |