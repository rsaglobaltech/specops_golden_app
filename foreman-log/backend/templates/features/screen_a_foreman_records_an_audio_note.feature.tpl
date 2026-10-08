Feature: Screen: a foreman records an audio note

  @REQ-302 @SCN-309
  Scenario: Screen: a foreman records an audio note
    Given a signed-in foreman on a log entry
    When they tap "Grabar nota", speak for 1 minute 20 seconds and tap "Detener"
    Then the screen shows "Nota de audio guardada (1:20)"
