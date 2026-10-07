Feature: An unresolved flag holds back only its own row from the export

  @REQ-111 @SCN-114
  Scenario: An unresolved flag holds back only its own row from the export
    Given a pay period with 3 approved timesheet rows and 1 row with an unresolved LOW_ACCURACY flag
    When an administrator exports the period as CSV
    Then the CSV has the header row and 3 data rows, and the flagged row is reported as held back
