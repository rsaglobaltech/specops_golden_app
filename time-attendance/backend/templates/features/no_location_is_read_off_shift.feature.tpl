Feature: No location is read off shift

  @REQ-113 @SCN-110
  Scenario: No location is read off shift
    Given a worker who clocked out at 15:30
    When the app stays open in the background until 17:00
    Then no location reading is taken after the clock out
