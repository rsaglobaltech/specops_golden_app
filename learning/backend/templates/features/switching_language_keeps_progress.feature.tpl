Feature: Switching language keeps progress

  @REQ-601 @SCN-602
  Scenario: Switching language keeps progress
    Given a foreman who completed 3 of 5 lessons of "Rebar color coding" in Spanish
    When they switch the app to English
    Then the course shows 3 of 5 lessons completed
