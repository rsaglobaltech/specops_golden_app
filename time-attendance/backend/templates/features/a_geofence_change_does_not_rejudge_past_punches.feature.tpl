Feature: A geofence change does not rejudge past punches

  @REQ-109 @SCN-112
  Scenario: A geofence change does not rejudge past punches
    Given jobsite "Mission Bay Tower" with a 100 m geofence and a clock in accepted 80 m from its center
    When an administrator reduces the geofence radius to 50 m
    Then the geofence is at version 2 and the earlier clock in is still judged against version 1 as accepted
