-- Transputation.Theorems.NoCollapse
-- Transputation cannot collapse to ordinary total-effective computation (Paper 76 Theorem T6).
-- In diagonal-capable transputational regime, the adjudicator cannot be total-effective.

import NemS.MFRR.DiagonalBarrier
import NemS.MFRR.BridgeToNEMS
import NemS.MFRR.ChoicePoints
import NemS.MFRR.PSCBundle

/-!
# No-Collapse Theorem

In the diagonal-capable transputational regime, the required internal
adjudicative role cannot be reduced to ordinary total-effective
algorithmic rule application. This is the main legitimation theorem
for "transputation" as a distinct computational class.
-/

namespace Transputation
namespace Theorems

/-- **Transputation not reducible to total-effective computation** (Paper 76 Theorem T6).

Under PSC, record-divergent choice, and diagonal capability:
- An internal selector (transputation) is forced (from ForcedAdjudication)
- Record-truth on the diagonal fragment is not computably decidable (DiagonalBarrier)
- Therefore the adjudicator cannot be replaced by a total-effective decider
  on the relevant self-referential fragment.
-/
theorem transputation_not_reducible_to_total_effective_computation
    {F : NemS.Framework} [dc : NemS.MFRR.DiagonalCapable F]
    {IsInternal : F.Selector → Prop}
    (psc : NemS.MFRR.PSCBundle F IsInternal)
    (cd : NemS.MFRR.ChoiceData F)
    (hChoice : NemS.MFRR.HasRecordDivergentChoice F cd) :
    (∃ S : F.Selector, IsInternal S) ∧ ¬ ComputablePred dc.asr.RT :=
  NemS.MFRR.PSC_choice_diagonal_forces_constrained_selection psc cd hChoice

end Theorems
end Transputation
