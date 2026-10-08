Feature: Screen: a foreman records a tailgate meeting

  @REQ-205 @SCN-218
  Scenario: Screen: a foreman records a tailgate meeting
    Given a signed-in foreman on the tailgate screen of job "GSR-2417"
    When they enter the topic "Working near rebar caps", collect 3 signatures and tap "Guardar reunión"
    Then the screen shows "Reunión registrada — 3 asistentes"
