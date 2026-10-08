Feature: Screen: a worker takes a meal break

  @REQ-206 @SCN-220
  Scenario: Screen: a worker takes a meal break
    Given a signed-in worker on the home screen at 11:30
    When they tap "Iniciar comida" and, at 12:00, "Terminar comida"
    Then the screen shows "Comida: 30 min"
