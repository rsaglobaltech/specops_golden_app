Feature: A passed compliance course issues a certificate

  @REQ-604 @SCN-603
  Scenario: A passed compliance course issues a certificate
    Given a foreman who passes the "Heat illness prevention" quiz
    When the quiz is submitted
    Then a dated completion certificate is issued and listed on their profile
