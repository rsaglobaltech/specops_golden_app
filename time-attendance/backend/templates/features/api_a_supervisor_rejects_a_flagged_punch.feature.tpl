Feature: API: a supervisor rejects a flagged punch

  @REQ-107 @SCN-121
  Scenario: API: a supervisor rejects a flagged punch
    Given a signed-in supervisor and a clock-out flagged OUTSIDE_GEOFENCE from one of their crews
    When they POST /api/attendance/punches/{id}/review with decision "REJECTED" and reason "Left site at 15:10 per GC log"
    Then the response is 200 and GET /api/attendance/flagged no longer lists that punch
