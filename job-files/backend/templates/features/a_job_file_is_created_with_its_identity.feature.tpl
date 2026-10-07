Feature: A job file is created with its identity

  @REQ-201 @SCN-206
  Scenario: A job file is created with its identity
    Given an administrator with job number "GSR-2417", name "Mission Bay Tower", address "1500 Owens St, San Francisco", general contractor "Webcor" and start date 2026-11-02
    When they create the job file
    Then the job file exists with those five values and no records
