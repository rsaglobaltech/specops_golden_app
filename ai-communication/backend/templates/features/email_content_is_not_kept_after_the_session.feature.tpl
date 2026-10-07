Feature: Email content is not kept after the session

  @REQ-505 @SCN-504
  Scenario: Email content is not kept after the session
    Given a user who had an email explained and saved no draft
    When the session ends
    Then no copy of the email content remains stored by the app
