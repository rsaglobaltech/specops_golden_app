Feature: API: an audio note over 5 minutes is refused

  @REQ-302 @SCN-308
  Scenario: API: an audio note over 5 minutes is refused
    Given a signed-in foreman and a log entry
    When they POST /api/foreman-log/entries/{id}/audio with a recording of 6 minutes
    Then the response is 422 with error "audio_too_long"
