"""
Render tools/packs_data.py into one Specgate domain pack per domain.

    python3 tools/build_packs.py

Writes <slug>/backend/pack.yaml, templates/capability.md.tpl (every
requirement's prose, as `### Requirement:` sections the derived matrix reads)
and one Gherkin template per scenario. Generated files carry a header; edit
packs_data.py instead.
"""

import os
import re
import shutil
import sys

import yaml

sys.path.insert(0, os.path.dirname(__file__))
from packs_data import DEPENDS, PACKS  # noqa: E402

ROOT = os.path.dirname(os.path.dirname(os.path.abspath(__file__)))
VERSION = "0.2.0"


class IndentedDumper(yaml.SafeDumper):
    """Indent block sequences under their key: Specgate's YAML reader needs it."""

    def increase_indent(self, flow=False, indentless=False):
        return super().increase_indent(flow, False)


def ident(prefix, rng, n):
    return f"{prefix}-{rng}{n:02d}"


def slugify(text):
    return re.sub(r"[^a-z0-9]+", "_", text.lower()).strip("_")


def build(pack):
    r = pack["range"]
    out = os.path.join(ROOT, pack["slug"], "backend")
    shutil.rmtree(out, ignore_errors=True)
    os.makedirs(os.path.join(out, "templates", "features"))

    reqs = [
        {
            "id": ident("REQ", r, i),
            "title": title,
            "priority": prio,
            "description": f"[{kind}] {desc}",
            "status": "Draft",
        }
        for i, (title, prio, kind, desc) in enumerate(pack["requirements"], 1)
    ]
    for i, deps in DEPENDS.get(pack["slug"], {}).items():
        reqs[i - 1]["depends_on"] = [d if isinstance(d, str) else ident("REQ", r, d) for d in deps]

    agg_names = sorted({a for _, _, _, aggs in pack["contexts"] for a in aggs})
    contexts = [
        {"id": ident("BC", r, i), "name": name, "type": typ, "responsibility": resp, "aggregates": aggs}
        for i, (name, typ, resp, aggs) in enumerate(pack["contexts"], 1)
    ]
    ctx_of = {a: c["id"] for c in contexts for a in c["aggregates"]}

    use_cases, commands = [], []
    for i, (name, actor, req_n, cmd, agg, emits) in enumerate(pack["use_cases"], 1):
        uc = {"id": ident("UC", r, i), "name": name, "actor": actor, "requirement": ident("REQ", r, req_n)}
        if cmd:
            uc["command"] = cmd
            commands.append({"id": ident("CMD", r, len(commands) + 1), "name": cmd, "use_case": uc["id"]})
        if agg:
            uc["aggregate"] = agg
        if emits:
            uc["emits"] = [emits]
        use_cases.append(uc)

    events = [
        {"id": ident("EVT", r, i), "name": name, "aggregate": agg, "payload": payload}
        for i, (name, agg, payload) in enumerate(pack["events"], 1)
    ]
    aggregates = [
        {
            "id": ident("AGG", r, i),
            "name": name,
            "bounded_context": ctx_of.get(name),
            "commands": [u["command"] for u in use_cases if u.get("aggregate") == name and u.get("command")],
            "events": [e["name"] for e in events if e["aggregate"] == name],
        }
        for i, name in enumerate(agg_names, 1)
    ]

    scenarios = []
    for i, (req_n, uc_n, title, steps) in enumerate(pack["scenarios"], 1):
        sid = ident("SCN", r, i)
        file = f"{slugify(title)}.feature"
        rid = ident("REQ", r, req_n)
        with open(os.path.join(out, "templates", "features", file + ".tpl"), "w") as fh:
            fh.write(
                f"Feature: {title}\n\n"
                f"  @{rid} @{sid}\n"
                f"  Scenario: {title}\n"
                f"    Given {steps[0]}\n"
                f"    When {steps[1]}\n"
                f"    Then {steps[2]}\n"
            )
        scenarios.append({
            "id": sid,
            "requirement_id": rid,
            "use_case": ident("UC", r, uc_n),
            "seed": True,
            "target": f"features/{pack['slug']}/{file}",
            "template": f"templates/features/{file}.tpl",
            "feature": title,
            "scenario": title,
            "status": "Draft",
        })

    cap = [f"# Capability — {pack['name']}", "", pack["summary"], "",
           "Installed from the Golden State Reinforcing specops repository into {{PROJECT_NAME}}.", ""]
    for req, (_, _, kind, _) in zip(reqs, pack["requirements"]):
        keyword = {"Must": "MUST", "Should": "SHOULD", "Could": "MAY"}[req["priority"]]
        cap += [f"### Requirement: {req['id']} — {req['title']}", "",
                f"<!-- csda:trace kind={kind} -->", "",
                f"**Obligation ({keyword}).** {req['title']}.", "",
                req["description"].split("] ", 1)[1], ""]
    if pack["rules"]:
        cap += ["## Business rules", ""]
        cap += [f"- **{t}.** {d}" for t, d in pack["rules"]]
        cap.append("")
    with open(os.path.join(out, "templates", "capability.md.tpl"), "w") as fh:
        fh.write("\n".join(cap))

    doc = {
        "schema_version": "1.3.0",
        "metadata": {"name": f"Golden State — {pack['name']}", "version": VERSION, "language": "en", "project_type": "backend"},
        "variables": {"required": ["PROJECT_NAME", "PROJECT_SLUG", "DOMAIN"]},
        "requirements": reqs,
        "bounded_contexts": contexts,
        "use_cases": use_cases,
        "commands": commands,
        "aggregates": aggregates,
        "events": events,
        "outputs": {"files": [{"target": f"docs/specs/capabilities/{pack['slug']}/spec.md", "template": "templates/capability.md.tpl"}]},
        "business_rules": [
            {"id": ident("RUL", r, i), "title": t, "context": contexts[0]["id"], "description": d}
            for i, (t, d) in enumerate(pack["rules"], 1)
        ],
        "rules": {"traceability": {"target": "docs/specs/traceability.md", "include_existing_rows": True, "default_status": "Draft"}},
        "scenarios": scenarios,
    }
    with open(os.path.join(out, "pack.yaml"), "w") as fh:
        fh.write("# Generated by tools/build_packs.py from tools/packs_data.py — edit the data, not this file.\n")
        yaml.dump(doc, fh, Dumper=IndentedDumper, sort_keys=False, allow_unicode=True, width=100000)
    return out


if __name__ == "__main__":
    for p in PACKS:
        print("built", os.path.relpath(build(p), ROOT))
