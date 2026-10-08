Feature: Screen: the app tells the worker its offline punches were sent

  @REQ-105 @SCN-120
  Scenario: Screen: the app tells the worker its offline punches were sent
    Given a signed-in worker with 2 punches waiting on the device
    When the app opens with the network back
    Then the screen shows "2 marcas sincronizadas"
