Feature: Revising an entry keeps the original capture

  @REQ-303 @SCN-301
  Scenario: Revising an entry keeps the original capture
    Given a log entry captured at 08:14 with two photos
    When the foreman revises its description at 16:00
    Then the entry shows revision 2 and the original capture time, photos and hashes are unchanged
