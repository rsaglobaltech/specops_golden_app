Feature: A worker sees the day's hours with a pending adjustment

  @REQ-110 @SCN-113
  Scenario: A worker sees the day's hours with a pending adjustment
    Given a worker clocked in at 06:00 and out at 14:30 with a 30 minute meal break, and has a pending adjustment of +15 minutes
    When they open their hours for that day in Spanish
    Then they see 8.0 approved hours and 0.25 pending hours labelled "pendiente"
