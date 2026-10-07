# Capability — AI Communication Assistant

Helps Spanish-speaking staff read and answer English email correctly, with the person always deciding what is sent.

Installed from the Golden State Reinforcing specops repository into {{PROJECT_NAME}}.

### Requirement: REQ-501 — Explain an English email in Spanish

<!-- csda:trace kind=functional -->

**Obligation (MUST).** Explain an English email in Spanish.

A user pastes or forwards an English email and gets a faithful Spanish explanation: who asks what, by when, and what is expected of them.

### Requirement: REQ-502 — Draft a reply in correct professional English

<!-- csda:trace kind=functional -->

**Obligation (MUST).** Draft a reply in correct professional English.

From what the user says in Spanish (typed or dictated), the assistant drafts a professional English reply, shown side by side with its Spanish back-translation.

### Requirement: REQ-503 — The user always sends, never the AI

<!-- csda:trace kind=business-rule -->

**Obligation (MUST).** The user always sends, never the AI.

The assistant never sends email by itself. The user reviews, edits and sends from their own mail client.

### Requirement: REQ-504 — Keep construction terms precise

<!-- csda:trace kind=functional -->

**Obligation (SHOULD).** Keep construction terms precise.

A glossary of rebar and construction terms (RFI, submittal, T&M, tag work, pour, PT cables, rebar sizes) is applied so translations keep trade meaning.

### Requirement: REQ-505 — No customer data is used to train models

<!-- csda:trace kind=non-functional -->

**Obligation (MUST).** No customer data is used to train models.

Email content is sent only to an AI provider under terms that exclude training on it, and is not stored beyond the session unless the user saves the draft.

## Business rules

- **A person sends every email.** The app produces drafts, never sends.
