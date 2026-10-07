Feature: A plan reader answer cites the sheet and carries the warning

  @REQ-608 @SCN-609
  Scenario: A plan reader answer cites the sheet and carries the warning
    Given a foreman who uploaded plan sheet "S-201" and asks "What bar size is called for in the grade beams?"
    When the assistant answers
    Then the answer references sheet S-201 and states that it must be checked against the stamped structural drawings
