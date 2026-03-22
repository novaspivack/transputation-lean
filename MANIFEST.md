# transputation-lean — MANIFEST

**Toolchain:** `leanprover/lean4:v4.29.0-rc3`  
**Mathlib:** v4.29.0-rc3 (via `lakefile.lean`)  
**Build:** `lake build` from this directory  
**Root import:** `Transputation.lean`  
**Last verified:** 2026-03-22 — matches `lean-toolchain` and Mathlib pin.

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
| Transputation.Interfaces.Realization | Realization criteria (Paper 76 §8, Paper 77) |
| Transputation.Interfaces.DSAC | DSAC interface schema + theorems |
| Transputation.Interfaces.ScenarioWitnesses | SAT, Max-SAT, MetricClosure scenario-class witnesses |

---

## Interfaces (Paper 77)

**Realization.lean** defines the abstract realization criteria:
- `ClosedContinuationSystem`, `InternalAdjudicativeDynamics`, `LawfulAdmissibility`
- `NonExternalizedContinuation`, `BurdenBearing`, `ClosurePreservation`
- `TransputationRealization` (bundles all six criteria)

**DSAC.lean** defines the abstract DSAC schema and theorems:
- `DSACConstraint`, `DSACUpdate`, `DSACScenario`, `ClosedScenario`
- `ResidualDrivenUpdate`, `DSACRealizationWitness`
- **dsac_witness_instantiates_realization**: a DSAC witness yields a TransputationRealization
- **DSACStep**: abstract step relation; **dsac_step_deterministic**
- **ResidualBoundedAdmissibility**: residual–admissibility–stabilization
- **OperationallyClosedWithInternalUpdate**; **operationally_closed_implies_non_externalized**
- **RealizationEquiv**; **witness_transport**: equiv + witness₁ ⇒ witness₂

**ScenarioWitnesses.lean** scenario-class structures:
- `SATScenario`, `MaxSATScenario`, `MetricClosureScenario`
- **sat_scenario_fits_schema**, **max_sat_scenario_fits_schema**, **metric_closure_scenario_fits_schema**

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
