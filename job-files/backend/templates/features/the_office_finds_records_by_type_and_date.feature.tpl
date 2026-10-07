Feature: The office finds records by type and date

  @REQ-209 @SCN-209
  Scenario: The office finds records by type and date
    Given job file "GSR-2417" with 2 JHAs and 1 forklift inspection dated 2026-11-03, and 1 JHA dated 2026-11-04
    When the office searches the job file for type JHA on 2026-11-03
    Then exactly the 2 JHAs from 2026-11-03 are returned
