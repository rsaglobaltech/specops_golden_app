Feature: An audio note in Spanish is transcribed

  @REQ-304 @SCN-303
  Scenario: An audio note in Spanish is transcribed
    Given a foreman records the audio note "el GC pidió parar el colado del nivel 3"
    When the transcription completes
    Then the entry shows the Spanish transcript and is found by searching "nivel 3"
