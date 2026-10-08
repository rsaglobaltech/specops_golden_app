Feature: API: a clock out outside the geofence is accepted with a flag

  @REQ-102 @SCN-117
  Scenario: API: a clock out outside the geofence is accepted with a flag
    Given a signed-in worker clocked in at jobsite "Mission Bay Tower"
    When they POST /api/attendance/punches with type "out" from 400 m outside the geofence
    Then the response is 201 and the punch has the flags ["OUTSIDE_GEOFENCE"]
