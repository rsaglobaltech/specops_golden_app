Feature: API: offline punches sync with their reconstructed times

  @REQ-105 @SCN-119
  Scenario: API: offline punches sync with their reconstructed times
    Given a signed-in worker whose device holds 2 punches captured offline
    When the device POSTs them to /api/attendance/punches/sync
    Then the response is 200 with 2 accepted punches, each with a reconstructedAt
