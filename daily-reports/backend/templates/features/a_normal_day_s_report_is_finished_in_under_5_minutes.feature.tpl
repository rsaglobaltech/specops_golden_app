Feature: A normal day's report is finished in under 5 minutes

  @REQ-402 @SCN-403
  Scenario: A normal day's report is finished in under 5 minutes
    Given a prefilled report for a normal day
    When the foreman adds "rebar placed for level 3 deck" and the delay "pump truck 45 min late"
    Then the report is submitted less than 5 minutes after it was opened
