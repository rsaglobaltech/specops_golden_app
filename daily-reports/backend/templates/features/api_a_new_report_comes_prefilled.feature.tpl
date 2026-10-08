Feature: API: a new report comes prefilled

  @REQ-401 @SCN-406
  Scenario: API: a new report comes prefilled
    Given a signed-in foreman and a crew of 6 that clocked 48 hours at job "GSR-2417" on 2026-11-03
    When they POST /api/daily-reports with job "GSR-2417" and date 2026-11-03
    Then the response is 201 with 6 workers and 48 hours
