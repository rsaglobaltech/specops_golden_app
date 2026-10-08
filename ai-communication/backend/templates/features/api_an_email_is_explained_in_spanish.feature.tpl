Feature: API: an email is explained in Spanish

  @REQ-501 @SCN-506
  Scenario: API: an email is explained in Spanish
    Given a signed-in user
    When they POST /api/communication/explain with an English email asking for revised Level 3 shop drawings by Friday 11/7
    Then the response is 200 with a Spanish explanation that names the deadline "viernes 7 de noviembre"
