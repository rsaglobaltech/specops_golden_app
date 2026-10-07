Feature: Crew cost with overtime

  @REQ-606 @SCN-604
  Scenario: Crew cost with overtime
    Given a crew of 1 foreman at $60/h and 4 ironworkers at $50/h working 10 hours with overtime at 1.5x after 8 hours
    When the foreman calculates the crew cost
    Then the total is $2,860
