Feature: API: a tailgate meeting records its attendees

  @REQ-205 @SCN-217
  Scenario: API: a tailgate meeting records its attendees
    Given a signed-in foreman on job "GSR-2417"
    When they POST /api/job-files/GSR-2417/tailgate-meetings with topic "Working near rebar caps" and 3 signatures
    Then the response is 201 with 3 attendees
