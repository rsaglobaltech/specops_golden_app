Feature: Screen: a worker adds a photo to the job

  @REQ-202 @SCN-212
  Scenario: Screen: a worker adds a photo to the job
    Given a signed-in worker on the job screen of "GSR-2417"
    When they tap "Agregar foto", take a photo and write "Rebar mat Level 3"
    Then the screen shows "Foto guardada" and the photo appears in the job's list
