Feature: A supervisor rejects a flagged punch with a reason

  @REQ-107 @SCN-111
  Scenario: A supervisor rejects a flagged punch with a reason
    Given a clock-out flagged OUTSIDE_GEOFENCE for worker "Luis Ortega" on a crew the supervisor leads
    When the supervisor rejects it with the reason "Left site at 15:10 per GC log"
    Then the review is recorded as REJECTED with that reason and the punch itself is unchanged
