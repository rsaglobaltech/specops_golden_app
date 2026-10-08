Feature: API: a worker reads the day's hours

  @REQ-110 @SCN-124
  Scenario: API: a worker reads the day's hours
    Given a signed-in worker with 8.0 approved hours and a pending adjustment of +15 minutes on 2026-11-03
    When they GET /api/attendance/me/hours?date=2026-11-03
    Then the response is 200 with approvedHours 8.0 and pendingHours 0.25
