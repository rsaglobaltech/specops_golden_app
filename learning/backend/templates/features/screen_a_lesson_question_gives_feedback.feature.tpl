Feature: Screen: a lesson question gives feedback

  @REQ-602 @SCN-613
  Scenario: Screen: a lesson question gives feedback
    Given a signed-in foreman on a lesson section with a question
    When they tap the correct answer
    Then the screen shows "Correcto" and enables "Siguiente"
