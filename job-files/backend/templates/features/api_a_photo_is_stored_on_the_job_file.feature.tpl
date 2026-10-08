Feature: API: a photo is stored on the job file

  @REQ-202 @SCN-211
  Scenario: API: a photo is stored on the job file
    Given a signed-in worker on job "GSR-2417"
    When they POST /api/job-files/GSR-2417/photos with an image and the caption "Rebar mat Level 3"
    Then the response is 201 with the photo's takenAt, location and caption
