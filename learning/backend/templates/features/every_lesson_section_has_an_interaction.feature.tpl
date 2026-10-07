Feature: Every lesson section has an interaction

  @REQ-602 @SCN-607
  Scenario: Every lesson section has an interaction
    Given a lesson "Reading bar marks" with 3 sections
    When it is published
    Then publishing is accepted only because each of the 3 sections has at least one question, exercise or calculator
