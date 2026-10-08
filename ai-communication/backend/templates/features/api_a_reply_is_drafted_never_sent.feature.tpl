Feature: API: a reply is drafted, never sent

  @REQ-502 @SCN-508
  Scenario: API: a reply is drafted, never sent
    Given a signed-in user
    When they POST /api/communication/replies with the instruction "dile que mandamos los planos el jueves"
    Then the response is 200 with an English draft and status "DRAFT", and no endpoint sends it
