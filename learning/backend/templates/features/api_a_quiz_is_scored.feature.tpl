Feature: API: a quiz is scored

  @REQ-603 @SCN-614
  Scenario: API: a quiz is scored
    Given a signed-in foreman enrolled in "Rebar basics"
    When they POST /api/enrollments/{id}/quiz with 8 correct answers out of 10
    Then the response is 200 with score 80 and passed true
