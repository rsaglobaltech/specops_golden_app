Feature: API: an entry is exported as a PDF

  @REQ-305 @SCN-311
  Scenario: API: an entry is exported as a PDF
    Given a signed-in office user and a log entry with 2 photos
    When they GET /api/foreman-log/entries/{id}/evidence.pdf
    Then the response is 200 with content type application/pdf
