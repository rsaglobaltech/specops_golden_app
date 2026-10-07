Feature: An English email is explained in Spanish

  @REQ-501 @SCN-505
  Scenario: An English email is explained in Spanish
    Given an English email from the general contractor asking "Please submit the revised rebar shop drawings for Level 3 by Friday 11/7"
    When the user asks for an explanation
    Then the Spanish explanation names who asks, what is asked (planos de taller revisados del nivel 3) and the deadline (viernes 7 de noviembre)
