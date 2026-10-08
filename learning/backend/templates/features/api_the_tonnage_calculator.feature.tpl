Feature: API: the tonnage calculator

  @REQ-605 @SCN-616
  Scenario: API: the tonnage calculator
    Given a signed-in foreman
    When they POST /api/calculators/tonnage with 120 bars #5 of 20 ft and 40 bars #8 of 30 ft
    Then the response is 200 with totalPounds 5707 and shortTons 2.85
