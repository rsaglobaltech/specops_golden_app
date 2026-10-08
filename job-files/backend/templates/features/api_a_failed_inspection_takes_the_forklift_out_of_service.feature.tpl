Feature: API: a failed inspection takes the forklift out of service

  @REQ-204 @SCN-215
  Scenario: API: a failed inspection takes the forklift out of service
    Given a signed-in operator and forklift "FL-07" in service
    When they POST /api/forklifts/FL-07/inspections with "brakes" failed
    Then the response is 201 and GET /api/forklifts/FL-07 returns status "OUT_OF_SERVICE"
