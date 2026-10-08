Feature: API: a geofence radius outside 30–1000 m is refused

  @REQ-109 @SCN-123
  Scenario: API: a geofence radius outside 30–1000 m is refused
    Given a signed-in administrator and jobsite "Mission Bay Tower"
    When they PUT /api/jobsites/{id}/geofence with radiusMeters 20
    Then the response is 422 with error "radius_out_of_range"
