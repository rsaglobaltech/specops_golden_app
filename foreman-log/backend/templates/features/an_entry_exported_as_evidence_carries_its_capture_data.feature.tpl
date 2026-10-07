Feature: An entry exported as evidence carries its capture data

  @REQ-305 @SCN-305
  Scenario: An entry exported as evidence carries its capture data
    Given a log entry with 2 photos, a transcript and a capture time of 2026-11-03 07:42 at the jobsite
    When the office exports the entry as evidence
    Then a PDF is produced that contains the 2 photos, the transcript, the capture time and the location
