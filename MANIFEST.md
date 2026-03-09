# transputation-lean — MANIFEST

**Program:** NEMS Suite  
**Papers:** 76, 77  
**Date:** March 2026  
**Status:** Scaffold — structure created, theorems pending  

---

## Dependency

- **nems-lean** — NemS, MFRR, Diagonal, ChoicePoints, PSCBundle, BridgeToNEMS

---

## Module Layout

| Module | Purpose |
|--------|---------|
| Transputation.Core.Frameworks | Paper-specific wrappers for Framework |
| Transputation.Core.Computation | Ordinary effective computation |
| Transputation.Core.Choice | ChoiceData, HasRecordDivergentChoice wrappers |
| Transputation.Core.Internality | Internal adjudicator notions |
| Transputation.Core.Diagonal | DiagonalCapable, barrier interfaces |
| Transputation.Core.Definitions | Transputation, regime definitions |
| Transputation.Theorems.ComputationSufficiency | Categorical sufficiency |
| Transputation.Theorems.ForcedAdjudication | Closure + choice forcing |
| Transputation.Theorems.DiagonalBarrierBridge | Diagonal non-total-effectiveness |
| Transputation.Theorems.NoCollapse | No collapse to total-effective |
| Transputation.Theorems.Classification | Regime classification |
| Transputation.Taxonomy.* | Nondeterminism, Oracle, Interactive, Hyper |
| Transputation.Interfaces.Realization | Realization criteria |
| Transputation.Interfaces.DSAC | DSAC interface schema |

---

## Theorem Targets

| Theorem | Status |
|---------|--------|
| computation_sufficient_of_categorical | Pending |
| closed_choice_forces_transputation | Pending |
| diagonal_fragment_not_totally_effective | Pending |
| transputation_not_reducible_to_total_effective_computation | Pending |
| transputation_classification | Pending |

---

## Reuse from nems-lean

- `PSC_and_choice_force_PT` → closed_choice_forces_transputation  
- `diagonal_barrier_rt` → diagonal_fragment_not_totally_effective  
- `PSC_classification` → transputation_classification  
