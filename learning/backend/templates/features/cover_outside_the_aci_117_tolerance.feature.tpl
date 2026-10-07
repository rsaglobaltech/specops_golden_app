Feature: Cover outside the ACI 117 tolerance

  @REQ-607 @SCN-605
  Scenario: Cover outside the ACI 117 tolerance
    Given a 6 in deep member with a specified cover of 1.5 in
    When the measured cover is 1.0 in
    Then the tool reports the cover 1/8 in outside the -3/8 in ACI 117 tolerance
