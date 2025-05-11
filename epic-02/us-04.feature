Feature: Visualización en tiempo real de las lecturas del sensor

  # Como usuario
  # Quiero ver en tiempo real las lecturas del sensor
  # Para estar informado de los niveles de gas en el ambiente

  Scenario: Acceso a las lecturas desde la interfaz principal
    Given que el usuario ha iniciado sesión en la aplicación
    And accede al panel principal
    When el sistema recibe nuevas lecturas del sensor
    Then las lecturas se actualizan en tiempo real en la interfaz del usuario

  Scenario Outline: Validación de datos mostrados
    Given que el usuario observa la sección de lecturas del sensor
    When el sistema detecta un nivel de gas de <nivel_gas> ppm
    Then el usuario debe visualizar <nivel_gas> ppm reflejado en pantalla

    Examples:
      | nivel_gas |
      | 250       |
      | 400       |
      | 800       |

  Scenario: Advertencia visual cuando el nivel es peligroso
    Given que el sensor detecta niveles superiores al umbral seguro
    When se visualiza la lectura en pantalla
    Then la interfaz muestra una advertencia de peligro al usuario
