Feature: A meal period reminder comes before the fifth hour

  @REQ-207 @SCN-203
  Scenario: A meal period reminder comes before the fifth hour
    Given a worker clocked in at 06:00 with no break taken
    When it is 10:30
    Then the worker is reminded to start a 30-minute meal period before 11:00
