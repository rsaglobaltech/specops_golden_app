# Capability — Time & Attendance

Geofenced clock in / clock out that resists manipulation, works offline, and leaves an audit trail payroll can trust.

Installed from the Golden State Reinforcing specops repository into {{PROJECT_NAME}}.

### Requirement: REQ-101 — Clock in only inside the assigned jobsite's geofence

<!-- csda:trace kind=functional -->

A worker can clock in only when the device's location fix lies inside the geofence of a jobsite they are assigned to. Outside it, the clock-in is refused and the worker is told how far away they are.

### Requirement: REQ-102 — Clock out from anywhere, flagging punches outside the geofence

<!-- csda:trace kind=functional -->

A worker can always clock out — refusing it would inflate hours — but a clock-out whose fix lies outside the jobsite geofence is recorded with the flag OUTSIDE_GEOFENCE for supervisor review.

### Requirement: REQ-103 — Every punch is immutable and carries its evidence

<!-- csda:trace kind=business-rule -->

A punch records worker, jobsite, type (in/out), device time, server receipt time, elapsed monotonic time, latitude, longitude and accuracy. Once written it is never edited; a correction is a separate adjustment record with a reason, an author and an approver.

### Requirement: REQ-104 — Reject spoofed locations and compromised devices

<!-- csda:trace kind=functional -->

A punch whose location is reported as mocked by the OS, or that comes from a rooted or jailbroken device, is refused. A fix with accuracy worse than 100 m is accepted only with the flag LOW_ACCURACY.

### Requirement: REQ-105 — Capture punches offline and sync them without trusting the device clock

<!-- csda:trace kind=functional -->

With no network a punch is stored on the device with its device time and the monotonic elapsed time since boot, and synced when the network returns. The server reconstructs the capture time from the monotonic clock and flags CLOCK_TAMPERED when device time and reconstructed time differ by more than 2 minutes.

### Requirement: REQ-106 — Verify identity with a photo at clock in

<!-- csda:trace kind=functional -->

Clock-in takes a front-camera photo stored with the punch, so a supervisor can spot buddy punching. Photos are never used for automated biometric matching without written consent.

### Requirement: REQ-107 — Supervisors review flagged punches

<!-- csda:trace kind=functional -->

A supervisor sees every flagged punch of their crews with its evidence (map, accuracy, photo, flags) and approves or rejects it with a reason. The decision is recorded, not the punch edited.

### Requirement: REQ-108 — Correct a punch through an approved adjustment

<!-- csda:trace kind=business-rule -->

A missed or wrong punch is corrected by an adjustment that states the corrected time and a reason, entered by the worker or a supervisor and approved by someone other than its author.

### Requirement: REQ-109 — Configure a geofence per jobsite

<!-- csda:trace kind=functional -->

An administrator defines each jobsite's geofence as a center and a radius (default 100 m, range 30–1000 m) and assigns crews to it. Changes are versioned so past punches are judged against the geofence in force when they happened.

### Requirement: REQ-110 — Workers see their own hours

<!-- csda:trace kind=functional -->

A worker sees their punches and total hours per day and per week, including pending adjustments, in English or Spanish.

### Requirement: REQ-111 — Export timesheets for payroll

<!-- csda:trace kind=functional -->

An administrator exports approved timesheets per pay period as CSV (worker, jobsite, date, in, out, breaks, regular and overtime hours). Unresolved flags block the export of the affected rows.

### Requirement: REQ-112 — A punch is confirmed on the device within 2 seconds

<!-- csda:trace kind=non-functional -->

From the tap to the on-screen confirmation, online or offline, a punch completes in under 2 seconds on a mid-range Android phone.

### Requirement: REQ-113 — Location is captured only at punch time

<!-- csda:trace kind=non-functional -->

The app reads location only while a punch is being taken. It does not track workers off shift or in the background (California privacy expectations; CCPA).

## Business rules

- **A punch is never edited.** Corrections are adjustments approved by someone other than their author.
- **A worker may only clock in at a jobsite they are assigned to.** Assignment is checked server-side, not only in the app.
- **Server time decides.** The capture time of an offline punch is reconstructed from the monotonic clock, never taken from the device clock alone.
