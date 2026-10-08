Feature: API: a clock in outside the geofence is refused with the distance

  @REQ-101 @SCN-115
  Scenario: API: a clock in outside the geofence is refused with the distance
    Given a signed-in worker assigned to jobsite "Mission Bay Tower" whose 100 m geofence is centered at 37.7706, -122.3915
    When they POST /api/attendance/punches with type "in", latitude 37.77285, longitude -122.3915 and accuracy 10
    Then the response is 422 with error "outside_geofence" and distanceMeters 250
