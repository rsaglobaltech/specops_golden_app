Feature: A clock in inside the geofence is accepted

  @REQ-101 @SCN-101
  Scenario: A clock in inside the geofence is accepted
    Given a worker assigned to jobsite "Mission Bay Tower" with a 100 m geofence
    When they clock in from 40 m away from the jobsite center with 12 m accuracy
    Then the punch is recorded as accepted with no flags
