Feature: An offline punch keeps its real capture time

  @REQ-105 @SCN-104
  Scenario: An offline punch keeps its real capture time
    Given a worker clocked in offline at 07:02 by the monotonic clock
    When the punch is synced at 09:15 with the device clock set to 06:30
    Then the punch is stored at 07:02 with the flag CLOCK_TAMPERED
