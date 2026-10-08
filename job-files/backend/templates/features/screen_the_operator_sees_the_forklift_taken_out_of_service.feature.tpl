Feature: Screen: the operator sees the forklift taken out of service

  @REQ-204 @SCN-216
  Scenario: Screen: the operator sees the forklift taken out of service
    Given a signed-in operator on the inspection screen of forklift "FL-07"
    When they mark "Frenos" as failed and tap "Enviar inspección"
    Then the screen shows "Montacargas fuera de servicio"
