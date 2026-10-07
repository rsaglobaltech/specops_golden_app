Feature: A downloaded lesson works offline

  @REQ-609 @SCN-606
  Scenario: A downloaded lesson works offline
    Given a foreman who downloaded "Rebar color coding"
    When they open its next lesson with no network
    Then the lesson opens and its completion syncs when the network returns
