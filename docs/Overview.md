# transputation-lean — Overview

**Purpose:** Machine-checked formalization of Paper 76 ( Formal Theory of Transputation) and interface layer for Paper 77 (DSAC realization).

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

### Interface Layer

- **Realization** — What an implementation must satisfy to count as transputation  
- **DSAC** — Abstract DSAC realization schema (Paper 77)  

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
| Interfaces/*.lean | Realization, DSAC |

---

## Dependency

Primary: nems-lean (NemS, MFRR, Diagonal).

Not used: sentience-lean, phenomenology-lean.
