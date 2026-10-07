Feature: A tailgate meeting records who attended

  @REQ-205 @SCN-207
  Scenario: A tailgate meeting records who attended
    Given a job file "GSR-2417" and a tailgate meeting on topic "Working near rebar caps" presented by foreman "Ana Ruiz"
    When 3 workers sign the attendance
    Then the meeting is stored on the job file with its topic, date, presenter and 3 signatures
