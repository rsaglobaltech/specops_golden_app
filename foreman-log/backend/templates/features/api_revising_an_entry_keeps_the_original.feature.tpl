Feature: API: revising an entry keeps the original

  @REQ-303 @SCN-310
  Scenario: API: revising an entry keeps the original
    Given a signed-in foreman and a log entry with the note "Pump truck arrived 07:40"
    When they PATCH /api/foreman-log/entries/{id} with the note "Pump truck arrived 07:50"
    Then the response is 200 with revision 2, and GET /api/foreman-log/entries/{id}/history returns both versions
