Feature: Screen: a worker sees the day's hours

  @REQ-110 @SCN-125
  Scenario: Screen: a worker sees the day's hours
    Given a signed-in worker with 8.0 approved hours and 0.25 pending hours on 2026-11-03
    When they open "Mis horas" for that day
    Then the screen shows "8.0 h" and "0.25 h pendiente"
