Feature: A failed forklift item puts the forklift out of service

  @REQ-204 @SCN-202
  Scenario: A failed forklift item puts the forklift out of service
    Given forklift "FL-07" in service
    When the pre-shift inspection marks "brakes" as failed
    Then forklift "FL-07" is out of service until a corrective note is filed
