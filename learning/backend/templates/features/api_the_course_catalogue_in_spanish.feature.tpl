Feature: API: the course catalogue in Spanish

  @REQ-601 @SCN-610
  Scenario: API: the course catalogue in Spanish
    Given a signed-in foreman
    When they GET /api/courses?lang=es
    Then the response is 200 and every course has a Spanish title
