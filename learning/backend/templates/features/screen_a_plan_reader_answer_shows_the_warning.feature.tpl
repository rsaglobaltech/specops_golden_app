Feature: Screen: a plan reader answer shows the warning

  @REQ-608 @SCN-619
  Scenario: Screen: a plan reader answer shows the warning
    Given a signed-in foreman on the plan reader with sheet "S-201"
    When they ask "What bar size is called for in the grade beams?"
    Then the screen shows the answer and the banner "Verifica con los planos estructurales sellados"
