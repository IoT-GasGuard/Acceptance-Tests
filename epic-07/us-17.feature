Feature: Agregar nuevos dispositivos al sistema

  # Como usuario
  # Quiero agregar nuevos sensores/actuadores al sistema
  # Para expandir la cobertura de monitoreo

  Scenario: Agregar un nuevo dispositivo
    Given que el usuario ha iniciado sesión en la aplicación
    When el usuario accede a la sección de dispositivos
    And el usuario agrega un nuevo dispositivo al sistema
    Then el sistema debe mostrar el nuevo dispositivo en la lista de dispositivos
    And el dispositivo debe tener un estado inicial de "Online"
