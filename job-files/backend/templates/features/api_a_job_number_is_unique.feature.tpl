Feature: API: a job number is unique

  @REQ-201 @SCN-210
  Scenario: API: a job number is unique
    Given a signed-in administrator and an existing job file "GSR-2417"
    When they POST /api/job-files with job number "GSR-2417"
    Then the response is 409 with error "job_number_taken"
