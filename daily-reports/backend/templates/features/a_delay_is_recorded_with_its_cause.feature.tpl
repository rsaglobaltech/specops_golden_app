Feature: A delay is recorded with its cause

  @REQ-403 @SCN-404
  Scenario: A delay is recorded with its cause
    Given a draft daily report for job "GSR-2417" on 2026-11-03
    When the foreman adds a delay of 90 minutes caused by "Concrete pump late"
    Then the report lists the delay with 90 minutes and that cause
