Feature: API: a log entry carries the server's capture data

  @REQ-301 @SCN-306
  Scenario: API: a log entry carries the server's capture data
    Given a signed-in foreman on job "GSR-2417"
    When they POST /api/foreman-log/entries with 2 photos and the note "Pump truck arrived 07:40"
    Then the response is 201 with capturedAt, location and 2 photos
