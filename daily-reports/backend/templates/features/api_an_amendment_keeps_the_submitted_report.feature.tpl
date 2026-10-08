Feature: API: an amendment keeps the submitted report

  @REQ-405 @SCN-412
  Scenario: API: an amendment keeps the submitted report
    Given a signed-in foreman and a submitted report
    When they POST /api/daily-reports/{id}/amendments with the reason "Wrong delay cause"
    Then the response is 201 and GET /api/daily-reports/{id} still returns the original content
