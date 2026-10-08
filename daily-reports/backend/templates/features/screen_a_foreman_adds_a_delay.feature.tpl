Feature: Screen: a foreman adds a delay

  @REQ-403 @SCN-409
  Scenario: Screen: a foreman adds a delay
    Given a signed-in foreman on a draft report
    When they tap "Agregar retraso", enter 90 minutes and "Concrete pump late" and tap "Guardar"
    Then the screen lists "Retraso: 90 min — Concrete pump late"
