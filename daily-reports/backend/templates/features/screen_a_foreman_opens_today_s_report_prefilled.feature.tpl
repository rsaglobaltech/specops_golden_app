Feature: Screen: a foreman opens today's report prefilled

  @REQ-401 @SCN-407
  Scenario: Screen: a foreman opens today's report prefilled
    Given a signed-in foreman whose crew of 6 clocked 48 hours today
    When they tap "Reporte del día"
    Then the screen shows "6 trabajadores" and "48 h"
