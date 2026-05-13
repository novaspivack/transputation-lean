# transputation-lean


## Research Program

This repository is part of the **Reflexive Reality** research program by [Nova Spivack](https://www.novaspivack.com/).

**What this formalizes:** Papers 76–77 of the NEMS suite (formal theory of transputation; DSAC as a realization of transputation).

| Link | Description |
|------|-------------|
| [Research page](https://www.novaspivack.com/research/) | Full index of all papers, programs, and Lean archives |
| [Full abstracts](https://novaspivack.github.io/research/abstracts/#nems-76) | Complete abstract for this library's papers |
| [Zenodo program hub](https://doi.org/10.5281/zenodo.19429270) | Citable DOI hub for the NEMS program |

All results are machine-checked in Lean 4 with a zero-sorry policy on proof targets.
See [MANIFEST.md](MANIFEST.md) for the sorry audit (if present).

---

Machine-checked theorem artifact for **Paper 76: A Formal Theory of Transputation** and interface layer for **Paper 77: DSAC as a Realization of Transputation**.

## Role

- **Paper 76:** Formalizes the theorem spine: closure-forced internal adjudication, diagonal non-total-effectiveness, classification, no-collapse.
- **Paper 77:** Uses the `Interfaces/` layer (Realization, DSAC) for mapping DSAC to realization criteria.

## Dependencies

- **nems-lean** (primary) — NemS, MFRR, Diagonal barrier, ChoicePoints, PSCBundle
- **mathlib** (via nems-lean)

## Build

```bash
lake update
lake exe cache get   # download pre-built Mathlib .olean files (strongly recommended)
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

`Interfaces/Realization.lean` defines the six realization criteria; `Interfaces/DSAC.lean` defines the DSAC schema and proves `dsac_witness_instantiates_realization`, `operationally_closed_implies_non_externalized`, `dsac_step_deterministic`, `witness_transport`; `Interfaces/ScenarioWitnesses.lean` provides SAT, Max-SAT, metric-closure scenario-class structures with fit theorems.

## Papers

| Paper | Role |
|-------|------|
| 76 | Formal theory; theorem spine |
| 77 | DSAC realization; uses Interfaces |

Papers are published on Zenodo — see [novaspivack.com/research](https://www.novaspivack.com/research) for DOI links.

## Documentation

See [MANIFEST.md](MANIFEST.md) for the module layout, theorem inventory, and proof-status accounting.
<!-- NOVA_ZPO_ZENODO_SOFTWARE_BEGIN -->
**Archival software (Zenodo):** https://doi.org/10.5281/zenodo.19429229
<!-- NOVA_ZPO_ZENODO_SOFTWARE_END -->
