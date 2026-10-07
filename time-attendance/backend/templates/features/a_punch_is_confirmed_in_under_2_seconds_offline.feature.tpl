Feature: A punch is confirmed in under 2 seconds offline

  @REQ-112 @SCN-109
  Scenario: A punch is confirmed in under 2 seconds offline
    Given a worker with no network inside their jobsite's geofence
    When they tap clock in
    Then the confirmation is on screen in under 2 seconds
