Feature: Every punch carries its evidence and cannot be edited

  @REQ-103 @SCN-107
  Scenario: Every punch carries its evidence and cannot be edited
    Given a worker inside the geofence of jobsite "Mission Bay Tower"
    When they clock in and someone later tries to change the punch time
    Then the punch keeps its device time, server time, monotonic time, latitude, longitude and accuracy, and the change is refused
