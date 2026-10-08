Feature: Screen: a foreman submits the report

  @REQ-404 @SCN-411
  Scenario: Screen: a foreman submits the report
    Given a signed-in foreman on a completed report with 2 recipients
    When they tap "Enviar reporte"
    Then the screen shows "Reporte enviado a 2 destinatarios" and no edit button
