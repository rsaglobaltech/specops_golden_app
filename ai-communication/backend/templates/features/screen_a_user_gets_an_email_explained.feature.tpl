Feature: Screen: a user gets an email explained

  @REQ-501 @SCN-507
  Scenario: Screen: a user gets an email explained
    Given a signed-in user on the email assistant screen
    When they paste an English email and tap "Explicar"
    Then the screen shows the Spanish explanation
