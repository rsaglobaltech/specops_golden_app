Feature: A submitted report is locked and sent

  @REQ-404 @SCN-405
  Scenario: A submitted report is locked and sent
    Given a completed daily report for job "GSR-2417" with recipients office@gsr.example and pm@webcor.example
    When the foreman submits it
    Then the report is locked, stored in the job file, and a PDF is queued for both recipients
