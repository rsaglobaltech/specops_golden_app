Feature: API: completing a lesson moves the progress

  @REQ-602 @SCN-612
  Scenario: API: completing a lesson moves the progress
    Given a signed-in foreman who completed 3 of 5 lessons of "Rebar color coding"
    When they POST /api/enrollments/{id}/lessons/{lessonId}/complete for the fourth lesson
    Then the response is 200 with 4 of 5 lessons completed
