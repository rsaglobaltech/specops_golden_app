# Capability — Job Files

One digital file per job: daily photos, safety records (JHA, forklift inspections, tailgate meetings) and break tracking, filled in from each worker's phone.

Installed from the Golden State Reinforcing specops repository into {{PROJECT_NAME}}.

### Requirement: REQ-201 — Create a digital file per job

<!-- csda:trace kind=functional -->

An administrator creates a job file with the job number, name, address, general contractor and start date. Every record below belongs to exactly one job file.

### Requirement: REQ-202 — Take and store jobsite photos

<!-- csda:trace kind=functional -->

A worker takes photos of the jobsite and the day's progress from the app; each is stored with the job, author, timestamp and location, and is available to the office within minutes of the phone regaining network.

### Requirement: REQ-203 — Record a daily Job Hazard Analysis (JHA)

<!-- csda:trace kind=functional -->

Before work starts, the crew's JHA is filled in: tasks, hazards, controls and the signatures of every worker on the crew. A day without a JHA is visible on the job file.

### Requirement: REQ-204 — Record forklift inspections

<!-- csda:trace kind=functional -->

A pre-shift forklift inspection checklist (Cal/OSHA) is completed per forklift and day. A failed item marks the forklift out of service until a corrective note is filed.

### Requirement: REQ-205 — Record tailgate safety meetings

<!-- csda:trace kind=functional -->

A tailgate meeting records topic, date, presenter and attendees' signatures, and can attach a photo of the sign-in sheet.

### Requirement: REQ-206 — Track meal and rest breaks precisely

<!-- csda:trace kind=functional -->

A worker starts and ends meal and rest breaks from the app; each break records start, end and location, and the day's breaks appear on the timesheet.

### Requirement: REQ-207 — Warn before a meal period is due

<!-- csda:trace kind=business-rule -->

Under California rules a 30-minute meal period starts before the end of the 5th hour worked, and a second before the end of the 10th. The app reminds the worker at 4h30m and records a missed or late meal period for the office. A covering collective bargaining agreement may change this; the thresholds are configurable.

### Requirement: REQ-208 — Every worker files from their own phone

<!-- csda:trace kind=non-functional -->

All job-file actions work from the worker's own Android or iPhone, offline included, with records queued and synced; everything is archived centrally.

### Requirement: REQ-209 — Search a job file

<!-- csda:trace kind=functional -->

The office finds any record in a job file by date, type, author or text.

## Business rules

- **No work without a JHA.** The job file shows any crew-day with punches but no JHA.
- **A failed forklift item takes the forklift out of service.** Until a corrective note is filed.
