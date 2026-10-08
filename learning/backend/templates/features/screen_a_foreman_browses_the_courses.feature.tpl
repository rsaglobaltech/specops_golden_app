Feature: Screen: a foreman browses the courses

  @REQ-601 @SCN-611
  Scenario: Screen: a foreman browses the courses
    Given a signed-in foreman with the app in Spanish
    When they open "Cursos"
    Then the screen lists the courses with their Spanish titles and progress
