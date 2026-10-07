# Golden State Reinforcing — domain packs

The specification of the Golden State Reinforcing field app, as six
[Specgate](https://rsaglobaltech.github.io/specgate/) domain packs. The app
(`golden_app`) installs them like dependencies, pinned to a tag.

| Pack | Ids | What it specifies |
|---|---|---|
| `time-attendance/backend` | 1xx | Geofenced clock in / out that resists manipulation, works offline, audit trail |
| `job-files/backend` | 2xx | One file per job: photos, JHA, forklift inspections, tailgate meetings, breaks |
| `foreman-log/backend` | 3xx | The foreman's CYB log: photos, audio notes, timestamps |
| `daily-reports/backend` | 4xx | Daily job report finished in minutes, prefilled from the day |
| `ai-communication/backend` | 5xx | Explain English email in Spanish, draft replies; a person always sends |
| `learning/backend` | 6xx | Bilingual foreman training, calculators, AI plan reader |

Each pack carries its requirements (tagged functional, non-functional or
business rule), use cases, aggregates, events, business rules and one Gherkin
scenario per requirement. Id ranges are disjoint so the packs compose in one
project.

## Use them

```bash
specgate specops add \
  --pack-repo https://github.com/rsaglobaltech/specops_golden_app.git \
  --pack-version v0.1.3 \
  --pack time-attendance/backend \
  --var PROJECT_NAME="Golden App" --var PROJECT_SLUG=golden-app --var DOMAIN="rebar construction"
```

## Change them

The packs are generated from one data file:

```bash
# edit tools/packs_data.py, then
python3 tools/build_packs.py
for p in */backend; do specgate pack lint --pack-root . --pack "$p" --strict; done
```

Never edit `*/backend/` by hand. A change ships as a new tag (`v0.2.0`), and
the app reviews it with `specgate specops diff --as-change` before upgrading.

## Sources behind the time & attendance requirements

Geofencing, mock-location rejection, offline punches and photo verification
follow what established construction time-tracking products do:
[Workyard](https://www.workyard.com/compare/top-geofencing-time-tracking-for-construction-projects),
[Buddy Punch on GPS spoofing](https://docs.buddypunch.com/en/articles/3070275-do-you-offer-safeguards-against-gps-spoofing),
[Fareclock on disabled location](https://support.fareclock.com/hc/en-us/articles/44964836830995-How-Do-I-Prevent-Workers-From-Disabling-Location-or-Internet-to-Bypass-Shift-and-Geo-Policies),
[geofencing for construction](https://get.clockit.io/learn/benefits-of-geofencing-for-construction).
Meal-period thresholds follow California Labor Code §512
([summary](https://www.shouselaw.com/employment/lunch-breaks.html)); a
collective bargaining agreement may change them, so they are configurable and
must be confirmed by the company. ACI 117 tolerances must be checked against
the edition the company uses.
