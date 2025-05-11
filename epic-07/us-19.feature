Feature: Eliminar dispositivos del sistema

  # Como usuario
  # Quiero remover dispositivos desinstalados
  # Para mantener mi lista actualizada

  Scenario: Eliminar un dispositivo vinculado
    Given que el usuario ha iniciado sesión en la aplicación
    And el usuario tiene dispositivos en su lista
    When el usuario selecciona un dispositivo para eliminar
    And confirma la eliminación
    Then el sistema debe eliminar el dispositivo de la lista de dispositivos
    And el sistema debe indicar al usuario que el dispositivo ha sido eliminado con éxito
