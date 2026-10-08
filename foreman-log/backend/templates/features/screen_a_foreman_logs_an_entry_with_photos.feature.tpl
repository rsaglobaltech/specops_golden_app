Feature: Screen: a foreman logs an entry with photos

  @REQ-301 @SCN-307
  Scenario: Screen: a foreman logs an entry with photos
    Given a signed-in foreman on the log screen
    When they tap "Nueva entrada", add 2 photos and the note "Pump truck arrived 07:40" and tap "Guardar"
    Then the screen shows "Entrada guardada" and the entry at the top of the list
