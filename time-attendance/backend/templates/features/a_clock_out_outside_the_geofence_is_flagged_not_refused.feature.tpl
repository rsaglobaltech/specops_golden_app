Feature: A clock out outside the geofence is flagged, not refused

  @REQ-102 @SCN-105
  Scenario: A clock out outside the geofence is flagged, not refused
    Given a worker clocked in at jobsite "Mission Bay Tower"
    When they clock out from 2 km away
    Then the clock out is recorded with the flag OUTSIDE_GEOFENCE
