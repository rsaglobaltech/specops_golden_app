Feature: Changing a submitted report creates an amendment

  @REQ-405 @SCN-402
  Scenario: Changing a submitted report creates an amendment
    Given today's report submitted at 17:10
    When the foreman changes the delay cause at 18:00
    Then an amendment is created and the submitted report is unchanged
