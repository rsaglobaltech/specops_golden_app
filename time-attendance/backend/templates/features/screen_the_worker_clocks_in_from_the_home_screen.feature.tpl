Feature: Screen: the worker clocks in from the home screen

  @REQ-101 @SCN-116
  Scenario: Screen: the worker clocks in from the home screen
    Given a signed-in worker on the home screen whose location is 40 m from the center of jobsite "Mission Bay Tower"
    When they tap "Marcar entrada"
    Then the screen shows "Entrada registrada" and the app sent a punch of type "in" with that location
