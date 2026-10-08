Feature: API: a delay is added to the report

  @REQ-403 @SCN-408
  Scenario: API: a delay is added to the report
    Given a signed-in foreman and a draft report
    When they PATCH /api/daily-reports/{id} adding a delay of 90 minutes caused by "Concrete pump late"
    Then the response is 200 and the report's delays contain that delay
