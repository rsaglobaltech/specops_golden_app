Feature: API: a submitted report is locked

  @REQ-404 @SCN-410
  Scenario: API: a submitted report is locked
    Given a signed-in foreman and a completed report
    When they POST /api/daily-reports/{id}/submit and then PATCH /api/daily-reports/{id}
    Then the submit response is 200 with status "SUBMITTED" and the PATCH response is 409 with error "report_locked"
