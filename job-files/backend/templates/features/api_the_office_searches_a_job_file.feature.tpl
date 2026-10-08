Feature: API: the office searches a job file

  @REQ-209 @SCN-221
  Scenario: API: the office searches a job file
    Given a signed-in office user and job file "GSR-2417" with 2 JHAs and 1 forklift inspection on 2026-11-03
    When they GET /api/job-files/GSR-2417/search?type=JHA&date=2026-11-03
    Then the response is 200 with exactly 2 results
