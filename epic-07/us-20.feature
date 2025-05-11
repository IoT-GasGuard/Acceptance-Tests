Feature: Monitorear dispositivos

  # Como Usuario
  # Quiero ver el estado de los dispositivos
  # Para saber si están funcionando correctamente o requieren mantenimiento

  Scenario: Listado completo de dispositivos
    Given que el usuario ha iniciado sesión en la aplicación
    When el usuario accede a la sección "Devices"
    Then el sistema mostrará todos los dispositivos (sensores o actuadores) asociados al sistema y un apartado para agregar un nuevo dispositivo

  Scenario: Dispositivo conectado
    Given que un sensor/actuador está encendido y en funcionamiento
    When el usuario accede a la sección "Devices"
    Then el sistema lo mostrará en la lista de dispositivos con estado "Online"

  Scenario: Dispositivo desconectado
    Given que un sensor/actuador no responde o no está enviando datos
    When el usuario se encuentra en la sección "Devices"
    Then podrá ver en la lista de dispositivos al dispositivo con estado "Disconnected"
