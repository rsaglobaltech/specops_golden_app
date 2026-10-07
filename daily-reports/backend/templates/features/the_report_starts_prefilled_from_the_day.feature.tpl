Feature: The report starts prefilled from the day

  @REQ-401 @SCN-401
  Scenario: The report starts prefilled from the day
    Given a crew of 6 that clocked 48 hours at jobsite "Mission Bay Tower" today with 12 photos and a JHA
    When the foreman opens today's report
    Then the report lists the 6 workers, 48 hours, 12 photos and the JHA
