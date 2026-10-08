Feature: API: a JHA is filed with the crew's signatures

  @REQ-203 @SCN-213
  Scenario: API: a JHA is filed with the crew's signatures
    Given a signed-in foreman on job "GSR-2417"
    When they POST /api/job-files/GSR-2417/jha with tasks, hazards, controls and 4 signatures for 2026-11-03
    Then the response is 201 and GET /api/job-files/GSR-2417/jha?date=2026-11-03 returns it
