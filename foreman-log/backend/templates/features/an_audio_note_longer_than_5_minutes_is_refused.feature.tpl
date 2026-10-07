Feature: An audio note longer than 5 minutes is refused

  @REQ-302 @SCN-304
  Scenario: An audio note longer than 5 minutes is refused
    Given a foreman's log entry for 2026-11-03
    When they attach an audio note of 5 minutes 20 seconds
    Then the note is refused with the reason that audio notes are limited to 5 minutes
