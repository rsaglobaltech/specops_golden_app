Feature: The assistant never sends email

  @REQ-503 @SCN-502
  Scenario: The assistant never sends email
    Given a reply drafted by the assistant
    When the user closes the assistant
    Then no email has been sent and the draft is offered to copy into their mail client
