Feature: Visualización y comparación de planes en el sitio web

  # Como visitante del sitio web
  # Quiero ver y comparar los planes que ofrece GasGuard
  # Para elegir el que se adapte a mis necesidades

  Scenario: Acceso a la sección de planes
    Given que el visitante se encuentra en la landing page de GasGuard
    When navega a la sección de planes
    Then podrá visualizar una lista de los planes disponibles

  Scenario Outline: Visualización de información de los planes
    Given que el visitante se encuentra en la sección de planes
    When observa el plan <plan>
    Then podrá ver la <descripcion> y el <precio> correspondiente

    Examples:
      | plan          | descripcion                   | precio    |
      | Básico        | Monitoreo y notificación       | S/0 mes |
      | Premium       | Todas las funciones avanzadas  | S/49.9 /mes|

  Scenario: Comparación entre planes
    Given que el visitante se encuentra en la sección de planes
    When selecciona la opción de comparar planes
    Then se muestra una tabla comparativa con características y beneficios de cada plan
