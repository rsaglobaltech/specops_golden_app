Feature: A clock in from a mocked location is refused

  @REQ-104 @SCN-103
  Scenario: A clock in from a mocked location is refused
    Given a worker inside the geofence of their jobsite
    When they clock in and the OS reports the location as mocked
    Then the clock in is refused with the reason MOCK_LOCATION
