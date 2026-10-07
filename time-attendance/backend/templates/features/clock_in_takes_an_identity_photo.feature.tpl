Feature: Clock in takes an identity photo

  @REQ-106 @SCN-108
  Scenario: Clock in takes an identity photo
    Given a worker clocking in at their jobsite
    When the clock in completes
    Then a front-camera photo is attached to the punch
