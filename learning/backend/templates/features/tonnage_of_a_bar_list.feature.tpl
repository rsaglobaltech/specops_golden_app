Feature: Tonnage of a bar list

  @REQ-605 @SCN-601
  Scenario: Tonnage of a bar list
    Given a bar list of 120 bars #5 of 20 ft and 40 bars #8 of 30 ft
    When the foreman calculates the tonnage
    Then the total is 5,707 lb (2.85 short tons)
