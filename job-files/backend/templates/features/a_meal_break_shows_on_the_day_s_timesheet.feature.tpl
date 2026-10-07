Feature: A meal break shows on the day's timesheet

  @REQ-206 @SCN-208
  Scenario: A meal break shows on the day's timesheet
    Given a worker on job "GSR-2417" who starts a meal break at 11:30
    When they end the break at 12:00
    Then the break is recorded as a 30 minute meal break with its start, end and location, and the day's timesheet lists it
