# transputation-lean

Machine-checked theorem artifact for **Paper 76: A Formal Theory of Transputation** and interface layer for **Paper 77: DSAC as a Realization of Transputation**.

## Role

- **Paper 76:** Formalizes the theorem spine: closure-forced internal adjudication, diagonal non-total-effectiveness, classification, no-collapse.
- **Paper 77:** Uses the `Interfaces/` layer (Realization, DSAC) for mapping DSAC to realization criteria.

## Dependencies

- **nems-lean** (primary) — NemS, MFRR, Diagonal barrier, ChoicePoints, PSCBundle
- **mathlib** (via nems-lean)

Do **not** depend on: sentience-lean, phenomenology-lean.

## Build

**Always build from the real path** (never from a long symlink path):

```bash
cd ~/transputation-lean
lake update
lake build
```

## Structure

```
Transputation/
├── Core/       — Frameworks, Computation, Choice, Internality, Diagonal, Definitions
├── Theorems/   — ComputationSufficiency, ForcedAdjudication, DiagonalBarrierBridge, NoCollapse, Classification
├── Taxonomy/   — Nondeterminism, Oracle, Interactive, Hyper
└── Interfaces/ — Realization, DSAC, ScenarioWitnesses
```

Interfaces/Realization.lean defines the six realization criteria; Interfaces/DSAC.lean defines the DSAC schema and proves dsac_witness_instantiates_realization, operationally_closed_implies_non_externalized, dsac_step_deterministic, witness_transport; Interfaces/ScenarioWitnesses.lean provides SAT, Max-SAT, metric-closure scenario-class structures with fit theorems.

## Papers

| Paper | Role |
|-------|------|
| 76 | Formal theory; theorem spine |
| 77 | DSAC realization; uses Interfaces |

## Reference

- PAPERS_76_77_PLAN.md (NEMS_PAPERS/notes/ROADMAPS/)
- CODING_PROTOCOLS.md
