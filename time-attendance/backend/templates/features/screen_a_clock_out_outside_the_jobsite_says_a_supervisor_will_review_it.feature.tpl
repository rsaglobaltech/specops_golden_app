Feature: Screen: a clock out outside the jobsite says a supervisor will review it

  @REQ-102 @SCN-118
  Scenario: Screen: a clock out outside the jobsite says a supervisor will review it
    Given a signed-in worker clocked in, whose location is 400 m outside the geofence
    When they tap "Marcar salida"
    Then the screen shows "Salida registrada — fuera de la obra, la revisará tu supervisor"
