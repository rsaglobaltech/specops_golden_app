Feature: Screen: a foreman calculates tonnage

  @REQ-605 @SCN-617
  Scenario: Screen: a foreman calculates tonnage
    Given a signed-in foreman on the tonnage calculator
    When they add 120 bars #5 of 20 ft and 40 bars #8 of 30 ft and tap "Calcular"
    Then the screen shows "5,707 lb (2.85 tons)"
