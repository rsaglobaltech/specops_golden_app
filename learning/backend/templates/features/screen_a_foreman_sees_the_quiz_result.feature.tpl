Feature: Screen: a foreman sees the quiz result

  @REQ-603 @SCN-615
  Scenario: Screen: a foreman sees the quiz result
    Given a signed-in foreman who answered the quiz of "Rebar basics" with 8 of 10 correct
    When they tap "Enviar respuestas"
    Then the screen shows "80% — aprobado"
