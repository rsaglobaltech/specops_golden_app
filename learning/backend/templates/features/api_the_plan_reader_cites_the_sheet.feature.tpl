Feature: API: the plan reader cites the sheet

  @REQ-608 @SCN-618
  Scenario: API: the plan reader cites the sheet
    Given a signed-in foreman who uploaded plan sheet "S-201"
    When they POST /api/plan-reader/questions with "What bar size is called for in the grade beams?"
    Then the response is 200 with an answer that references "S-201" and a warning to check the stamped drawings
