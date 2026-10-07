# Capability — Foreman Learning

Interactive bilingual (English/Spanish) training for foremen, with calculators and an AI plan reader.

Installed from the Golden State Reinforcing specops repository into {{PROJECT_NAME}}.

### Requirement: REQ-601 — Offer a catalogue of bilingual courses

<!-- csda:trace kind=functional -->

Courses are published in English and Spanish; a learner switches language at any time without losing progress. The initial catalogue covers: blueprint reading vs structural plans, workload planning, avoiding crew idle time, QC before every concrete pour, working with the general contractor, crew cost, tag work and T&M, PT cable accessories, manpower planning, rates, rebar color coding, rigging and picks, personal time management, tonnage, jobsite safety, rebar weight tables, ACI 117 tolerances, the AI plan reader, heat illness prevention, sexual harassment prevention and substance abuse prevention.

### Requirement: REQ-602 — Lessons are interactive

<!-- csda:trace kind=functional -->

A lesson combines short text, images or video, and at least one interaction (question, exercise or calculator) per section.

### Requirement: REQ-603 — Quiz each course and track progress

<!-- csda:trace kind=functional -->

Each course ends with a quiz; the learner's progress, scores and completion dates are recorded and visible to their manager.

### Requirement: REQ-604 — Compliance courses keep a certificate

<!-- csda:trace kind=business-rule -->

Heat illness prevention, sexual harassment prevention and substance abuse prevention issue a dated completion certificate, retained for the period the company's compliance policy sets.

### Requirement: REQ-605 — Calculate rebar weight and tonnage

<!-- csda:trace kind=functional -->

A calculator returns weight per bar size (#3 to #18) and length, and total tonnage for a list of bars, using the standard rebar weight table.

### Requirement: REQ-606 — Calculate crew cost and rates

<!-- csda:trace kind=functional -->

A calculator returns crew cost for a crew composition, hours and rates, including overtime.

### Requirement: REQ-607 — Check against ACI 117 tolerances

<!-- csda:trace kind=functional -->

A tool tells whether a measured placement (cover, spacing) is within the ACI 117 tolerance for the element and dimension.

### Requirement: REQ-608 — Read plans with AI assistance

<!-- csda:trace kind=functional -->

A foreman uploads a plan sheet and asks questions; the assistant answers with references to the sheet, and states clearly that answers must be checked against the stamped structural drawings.

### Requirement: REQ-609 — Lessons work offline

<!-- csda:trace kind=non-functional -->

A downloaded course is usable without network; progress syncs later.

## Business rules

- **Language never resets progress.** Progress belongs to the course, not to its language.
