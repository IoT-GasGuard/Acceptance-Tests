Feature: Visualización de características principales del sistema GasGuard

  # Como visitante del sitio web
  # Quiero ver las características principales de GasGuard en el landing page
  # Para entender cómo funciona y cómo puede garantizar seguridad

  Scenario: Acceso a las características desde la landing page
    Given que el visitante accede a la landing page de GasGuard
    When navega por la sección de características
    Then podrá visualizar una descripción general del funcionamiento del sistema

  Scenario Outline: Visualización de características clave
    Given que el visitante se encuentra en la sección de características
    When observa la interfaz
    Then debe encontrar una descripción de la característica <caracteristica>

    Examples:
      | caracteristica               |
      | Detección automática de gas |
      | Corte eléctrico de emergencia |
      | Notificaciones al celular    |
      | Control inteligente de ventilación |
      | Monitoreo en tiempo real     |

  Scenario: Comprensión del valor de seguridad
    Given que el visitante revisa las características del sistema
    When analiza el propósito de cada funcionalidad
    Then podrá comprender cómo GasGuard ayuda a garantizar la seguridad en el hogar
