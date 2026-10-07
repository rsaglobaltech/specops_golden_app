Feature: A record made offline is archived centrally

  @REQ-208 @SCN-205
  Scenario: A record made offline is archived centrally
    Given a worker with no network fills in a tailgate meeting from their own phone
    When the network returns
    Then the meeting is archived in the job file with its original time
