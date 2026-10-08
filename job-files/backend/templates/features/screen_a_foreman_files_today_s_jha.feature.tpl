Feature: Screen: a foreman files today's JHA

  @REQ-203 @SCN-214
  Scenario: Screen: a foreman files today's JHA
    Given a signed-in foreman on the JHA screen of job "GSR-2417"
    When they fill tasks, hazards and controls, collect 4 signatures and tap "Firmar y guardar"
    Then the screen shows "JHA guardado"
