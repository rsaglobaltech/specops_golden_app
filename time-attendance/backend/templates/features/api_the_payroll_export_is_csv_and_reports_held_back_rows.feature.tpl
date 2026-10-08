Feature: API: the payroll export is CSV and reports held-back rows

  @REQ-111 @SCN-126
  Scenario: API: the payroll export is CSV and reports held-back rows
    Given a signed-in administrator and a pay period with 3 approved rows and 1 row with an unresolved flag
    When they GET /api/timesheets/export?periodStart=2026-11-01&periodEnd=2026-11-15
    Then the response is 200 text/csv with a header and 3 data rows, and the header X-Held-Back-Rows is 1
