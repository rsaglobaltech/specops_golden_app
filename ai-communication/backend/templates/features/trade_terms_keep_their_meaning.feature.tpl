Feature: Trade terms keep their meaning

  @REQ-504 @SCN-503
  Scenario: Trade terms keep their meaning
    Given an English email that says "Send the T&M tickets for the tag work on level 2 by Friday"
    When the user asks for an explanation
    Then the Spanish explanation says "T&M (tiempo y materiales)" and "tag work (trabajo extra autorizado)"
