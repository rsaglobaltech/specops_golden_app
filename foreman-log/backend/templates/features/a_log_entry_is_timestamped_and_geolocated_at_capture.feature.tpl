Feature: A log entry is timestamped and geolocated at capture

  @REQ-301 @SCN-302
  Scenario: A log entry is timestamped and geolocated at capture
    Given a foreman at jobsite "Mission Bay Tower"
    When they log "GC instructed to hold pour on level 3" with a photo
    Then the entry carries the capture time and location of the photo
