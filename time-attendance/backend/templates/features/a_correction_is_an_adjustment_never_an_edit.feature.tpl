Feature: A correction is an adjustment, never an edit

  @REQ-108 @SCN-106
  Scenario: A correction is an adjustment, never an edit
    Given a worker who forgot to clock out at 15:30
    When their supervisor adjusts the punch to 15:30 with the reason "forgot to clock out" and another supervisor approves it
    Then the original punch is unchanged and the timesheet shows the adjusted time with its approval
