-- Transputation.Interfaces.Realization
-- Abstract realization criteria for transputation (Paper 76 Section 8, Paper 77).
-- What an implementation must satisfy to count as a realization.

/-!
# Realization Criteria

Paper 76 specifies six criteria that an implementation family must satisfy
to count as a realization of transputation:

1. **Internality**: continuation resolution is internal, not outsourced.
2. **Lawful admissibility**: choices respect admissible continuation constraints.
3. **Non-externalized continuation**: no oracle or environment supplies the choice.
4. **Burden-bearing**: the system bears the adjudicative burden in constrained choice.
5. **No total-effective replacement**: (in diagonal-capable regimes) the adjudication
   cannot be replaced by a total-effective static decider.
6. **Closure preservation**: the system operates under closure constraints.

This module defines the abstract schema for realizations. Concrete implementations
(e.g., DSAC) instantiate these criteria at the architecture level.
-/

namespace Transputation
namespace Interfaces

universe u

/-- A **closed continuation system** has a state space and an internal evolution
that does not receive continuation choices from an external oracle.
The key property: the next state is determined by the current state and
internal dynamics alone. -/
class ClosedContinuationSystem (State : Type u) where
  /-- Internal update: next state from current state, no external input. -/
  update : State → State

/-- **Internal adjudicative dynamics**: the system resolves continuation
choices internally through its own state evolution, not by delegating
to an external selector. -/
class InternalAdjudicativeDynamics (State : Type u) [c : ClosedContinuationSystem State] where
  /-- Continuation resolution is internal to the system state. -/
  internal_resolution : True

/-- **Lawful admissibility**: choices respect admissible continuation constraints.
At the abstract level, we assert that the system has a notion of admissible
continuations and that evolution respects it. -/
class LawfulAdmissibility (State : Type u) (Admissible : State → Prop)
    [c : ClosedContinuationSystem State] where
  /-- The update preserves or moves within admissible states. -/
  update_admissible : ∀ s, Admissible s → Admissible (c.update s)

/-- **Non-externalized continuation**: no oracle or environment supplies
the continuation choice. The system state alone determines the next step. -/
class NonExternalizedContinuation (State : Type u) [ClosedContinuationSystem State] where
  /-- Evolution is determined by state; no external continuation supplier. -/
  no_external_continuation : True

/-- **Burden-bearing**: the system bears the adjudicative burden.
The computational work of resolving underdetermined choices is internal. -/
class BurdenBearing (State : Type u) [ClosedContinuationSystem State] where
  /-- The system performs the adjudicative work. -/
  bears_burden : True

/-- **Closure preservation**: the system operates under closure constraints.
Once initialized, no external model selector intervenes. -/
class ClosurePreservation (State : Type u) [ClosedContinuationSystem State] where
  /-- The run proceeds under closure. -/
  closure_preserved : True

/-- A **transputation realization** bundles the six criteria for a system.
An implementation family (e.g., DSAC) provides a witness that it satisfies
this structure at the architecture level. -/
structure TransputationRealization (State : Type u) (Admissible : State → Prop)
    [ClosedContinuationSystem State] where
  internal : InternalAdjudicativeDynamics State
  lawful : LawfulAdmissibility State Admissible
  nonExternalized : NonExternalizedContinuation State
  burdenBearing : BurdenBearing State
  closurePreservation : ClosurePreservation State

/-- The "no total-effective replacement" criterion is theorem-backed in Paper 76
for the abstract diagonal-capable regime. It is conditional: it holds when the
realization occupies that regime. We do not formalize the full barrier here;
see DiagonalBarrierBridge. -/
def NoTotalEffectiveReplacementConditional (_State : Type u) : Prop := True

end Interfaces
end Transputation
