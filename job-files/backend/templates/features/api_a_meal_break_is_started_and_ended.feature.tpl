Feature: API: a meal break is started and ended

  @REQ-206 @SCN-219
  Scenario: API: a meal break is started and ended
    Given a signed-in worker on job "GSR-2417"
    When they POST /api/breaks with type "meal" at 11:30 and POST /api/breaks/{id}/end at 12:00
    Then the end response is 200 with durationMinutes 30
