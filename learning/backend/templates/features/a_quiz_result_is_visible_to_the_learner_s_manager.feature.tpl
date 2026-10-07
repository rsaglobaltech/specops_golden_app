Feature: A quiz result is visible to the learner's manager

  @REQ-603 @SCN-608
  Scenario: A quiz result is visible to the learner's manager
    Given a learner who completes the quiz of course "Rebar basics" with 8 correct answers out of 10
    When their manager opens the team's progress
    Then the manager sees the course as completed with a score of 80% and the completion date
