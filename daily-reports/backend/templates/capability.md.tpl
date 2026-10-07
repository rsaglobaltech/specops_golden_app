# Capability — Daily Reports

A daily job report the foreman finishes in minutes, prefilled from the day's punches, photos, safety records and log.

Installed from the Golden State Reinforcing specops repository into {{PROJECT_NAME}}.

### Requirement: REQ-401 — Prefill the daily report from the day's records

<!-- csda:trace kind=functional -->

**Obligation (MUST).** Prefill the daily report from the day's records.

The report for a job and day is prefilled with crew and hours (from punches), photos, safety records and log entries, so the foreman only reviews and adds what is missing.

### Requirement: REQ-402 — Finish a daily report in under 5 minutes

<!-- csda:trace kind=non-functional -->

**Obligation (MUST).** Finish a daily report in under 5 minutes.

A foreman with a normal day completes and submits the report in under 5 minutes, measured in the pilot.

### Requirement: REQ-403 — Add work done, delays and materials

<!-- csda:trace kind=functional -->

**Obligation (MUST).** Add work done, delays and materials.

The foreman adds work completed, delays with their cause, materials received and equipment on site, in English or Spanish.

### Requirement: REQ-404 — Submit and share the report

<!-- csda:trace kind=functional -->

**Obligation (MUST).** Submit and share the report.

A submitted report is locked, stored in the job file and sent as PDF to configured recipients (office, PM).

### Requirement: REQ-405 — A submitted report is never edited

<!-- csda:trace kind=business-rule -->

**Obligation (MUST).** A submitted report is never edited.

Changes after submission create an amendment linked to the original.

## Business rules

- **One report per job and day.** A second report for the same job and day is an amendment.
