Feature: API: an adjustment cannot be approved by its author

  @REQ-108 @SCN-122
  Scenario: API: an adjustment cannot be approved by its author
    Given a signed-in supervisor who POSTed an adjustment of +15 minutes with reason "Forgot to clock out"
    When the same supervisor POSTs /api/attendance/adjustments/{id}/approve
    Then the response is 403 with error "approver_must_differ"
