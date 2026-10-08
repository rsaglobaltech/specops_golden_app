Feature: Screen: a drafted reply can be copied, not sent

  @REQ-502 @SCN-509
  Scenario: Screen: a drafted reply can be copied, not sent
    Given a signed-in user on the email assistant screen
    When they write "dile que mandamos los planos el jueves" and tap "Redactar respuesta"
    Then the screen shows the English draft with a "Copiar" button and no "Enviar" button
