Feature: HU02: Edición de la información del perfil

    Como usuario de la aplicación, 
    quiero poder editar mi perfil  
    para actualizar mi información personal y preferencias.

    Scenario: Acceso a la edición de mi perfil

    Given que un usuario registrado accede a la aplicación
    When inicia sesión en la aplicación
    And navega hasta la sección de ¨Mi perfil¨
    Then se le presentará la opción de editar su perfil.

    Examples: Datos de entrada
        | sección "Mi perfil" | 
        | opción "Editar perfil"|

    Scenario: Actualización de información personal

    Given que un usuario desea editar su perfil en la aplicación
    When el usuario accede a la sección de edición de perfil
    And el usuario actualiza su nombre, dirección de correo electrónico u otra información personal
    And el usuario guarda los cambios realizados
    Then los datos personales del usuario deben actualizarse correctamente en su perfil.

    Examples: Datos de entrada
        | sección "Edición de perfil" | nombre | correo electrónico |
        | selecciona botón "Guardar"  |

    Examples: Datos de salida
        | datos actualizados | 

    Scenario: Modificación de preferencias de búsqueda

    Given el usuario desea editar su perfil
    When accede a la sección de edición de perfil
    And modifica las preferencias de búsqueda ingresando datos válidos en cada campo
    And guarda los cambios realizados haciendo clic en el botón ¨Guardar¨
    Then las preferencias de búsqueda del usuario se actualizarán correctamente en su perfil.

    Examples: Datos de entrada
        | sección "Edición de perfil" | Header 2 | Header 3 |
        | modifica preferencias búsqueda | 
        | selecciona botón "Guardar"  |

    Examples: Datos de salida 
        | preferencias de búqueda actualizadas  |
