# Capability — Foreman Log (CYB)

The foreman's 'cover your back' log: photos, audio notes and timestamps per task or event on the job.

Installed from the Golden State Reinforcing specops repository into {{PROJECT_NAME}}.

### Requirement: REQ-301 — Log an entry with photos per task or event

<!-- csda:trace kind=functional -->

A foreman creates a log entry for a task or event (delay, instruction from the GC, damage, inspection) with one or more photos; the entry is timestamped and geolocated at capture.

### Requirement: REQ-302 — Record audio notes on an entry

<!-- csda:trace kind=functional -->

A foreman records audio notes (up to 5 minutes each) on an entry; audio is stored with the entry and can be played from the office.

### Requirement: REQ-303 — Entries are tamper-evident

<!-- csda:trace kind=business-rule -->

An entry's capture time, location and media hashes are fixed at capture; edits append a revision and never change the original, so the log can back a claim with the general contractor.

### Requirement: REQ-304 — Transcribe audio notes

<!-- csda:trace kind=functional -->

Audio notes are transcribed (English and Spanish) so they can be searched and quoted.

### Requirement: REQ-305 — Share an entry as evidence

<!-- csda:trace kind=functional -->

A foreman or the office exports an entry, or a date range of entries, as a PDF with photos, transcript, timestamps and map.

## Business rules

- **The original entry is permanent.** Revisions append; the capture is never overwritten.
