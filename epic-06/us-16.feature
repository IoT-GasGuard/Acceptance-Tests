Feature: Accesibilidad de la landing page desde distintos dispositivos

  # Como visitante del sitio web
  # Quiero que la landing page sea accesible desde mi computadora, tablet o móvil
  # Para tener una buena experiencia desde cualquier dispositivo

  Scenario Outline: Acceso a la landing page desde múltiples dispositivos
    Given que el visitante accede al sitio web desde un <dispositivo>
    When la landing page carga
    Then el contenido debe visualizarse correctamente y estar adaptado al <dispositivo>

    Examples:
      | dispositivo  |
      | computadora  |
      | tablet       |
      | móvil        |

  Scenario Outline: Visualización adecuada del diseño responsivo
    Given que el visitante accede a la landing page desde un <dispositivo>
    When navega por la página
    Then los elementos visuales y de navegación deben estar correctamente distribuidos y accesibles en el <dispositivo>

    Examples:
      | dispositivo  |
      | computadora  |
      | tablet       |
      | móvil        |

  Scenario: Navegación fluida desde cualquier dispositivo
    Given que el visitante accede a la landing page desde un dispositivo
    When interactúa con los botones o menús
    Then todas las funcionalidades deben responder correctamente sin errores de visualización
