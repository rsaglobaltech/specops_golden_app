Feature: A photo taken offline reaches the job file after sync

  @REQ-202 @SCN-204
  Scenario: A photo taken offline reaches the job file after sync
    Given a worker with no network at jobsite "Mission Bay Tower"
    When they take a progress photo and the network returns
    Then the photo appears in the job file with its original capture time
