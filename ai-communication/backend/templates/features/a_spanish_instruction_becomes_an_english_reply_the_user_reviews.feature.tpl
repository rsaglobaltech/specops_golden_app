Feature: A Spanish instruction becomes an English reply the user reviews

  @REQ-502 @SCN-501
  Scenario: A Spanish instruction becomes an English reply the user reviews
    Given an English email from the GC asking to confirm the level 3 pour for Friday
    When the user says "confírmale que el viernes a las 7 estamos listos"
    Then an English reply confirming the Friday 7:00 pour is drafted with its Spanish back-translation and is not sent
