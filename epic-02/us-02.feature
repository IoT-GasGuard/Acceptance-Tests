Feature: Ejecución de protocolos de seguridad ante detección de gas

  # Como usuario
  # Quiero que el sensor ejecute protocolos de seguridad cuando detecte niveles de gas peligrosos
  # Para reducir riesgos durante una fuga

  Scenario: Activación automática de protocolos de seguridad
    Given que el sensor está operativo en el hogar
    And los niveles de gas en el ambiente superan el umbral de seguridad
    When el sistema detecta la fuga de gas
    Then se activan automáticamente los protocolos de seguridad

  Scenario Outline: Verificación de acciones de seguridad
    Given que el sistema ha detectado una fuga de gas
    When se ejecutan los protocolos de seguridad
    Then se debe activar la acción <accion>

    Examples:
      | accion                  |
      | Corte eléctrico         |
      | Apertura de ventanas    |
      | Notificación de emergencia |

  Scenario: Confirmación de notificación enviada al usuario
    Given que el sistema ha detectado una fuga de gas
    When se activa el protocolo de notificación
    Then el usuario recibe un mensaje de alerta en su dispositivo móvil
