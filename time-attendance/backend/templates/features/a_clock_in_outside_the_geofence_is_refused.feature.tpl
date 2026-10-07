Feature: A clock in outside the geofence is refused

  @REQ-101 @SCN-102
  Scenario: A clock in outside the geofence is refused
    Given a worker assigned to jobsite "Mission Bay Tower" with a 100 m geofence
    When they clock in from 650 m away
    Then the clock in is refused and the worker is told they are 550 m outside the jobsite
