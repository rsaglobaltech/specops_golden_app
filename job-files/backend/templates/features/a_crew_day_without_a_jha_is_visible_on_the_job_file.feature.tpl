Feature: A crew-day without a JHA is visible on the job file

  @REQ-203 @SCN-201
  Scenario: A crew-day without a JHA is visible on the job file
    Given a crew that clocked in at jobsite "Mission Bay Tower" today
    When no JHA has been filed for that crew today
    Then the job file shows today's JHA as missing for that crew
