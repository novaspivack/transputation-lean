# transputation-lean — Overview

**Purpose:** Machine-checked formalization of Paper 76 (A Formal Theory of Transputation) and interface layer for Paper 77 (DSAC as a Realization of Transputation).

---

## Architecture

### Core Layer

Abstract objects: framework wrappers, computation, choice, internality, diagonal capability, transputation definitions.

### Theorem Layer

- Computation sufficiency in categorical regimes  
- Closure + record-divergent choice force internal adjudication  
- Diagonal fragment not total-effective  
- No collapse to ordinary total-effective computation  
- Classification theorem  

### Taxonomy Layer

Relationship to: deterministic computation, nondeterminism, oracle, interactive, hypercomputation.

### Interface Layer (Paper 77)

- **Realization** — Six realization criteria; TransputationRealization structure  
- **DSAC** — Abstract DSAC schema; dsac_witness_instantiates_realization; operationally_closed_implies_non_externalized; dsac_step_deterministic; witness_transport; ResidualBoundedAdmissibility  
- **ScenarioWitnesses** — SATScenario, MaxSATScenario, MetricClosureScenario; sat/max_sat/metric_closure_scenario_fits_schema  

---

## File Map

| Path | Responsibility |
|------|----------------|
| Core/Frameworks.lean | Framework wrappers |
| Core/Computation.lean | Ordinary computation |
| Core/Choice.lean | Choice points, record divergence |
| Core/Internality.lean | Internal adjudicator |
| Core/Diagonal.lean | Diagonal capability |
| Core/Definitions.lean | Transputation |
| Theorems/*.lean | Main results |
| Taxonomy/*.lean | TCS comparisons |
| Interfaces/Realization.lean | Realization criteria |
| Interfaces/DSAC.lean | DSAC schema, theorems |
| Interfaces/ScenarioWitnesses.lean | Scenario-class witnesses |

---

## Dependency

Primary: nems-lean (NemS, MFRR, Diagonal).

Not used: sentience-lean, phenomenology-lean.
