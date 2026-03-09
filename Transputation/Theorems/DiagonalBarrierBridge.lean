-- Transputation.Theorems.DiagonalBarrierBridge
-- Diagonal-capable regimes forbid total-effective adjudicative totalization.
-- Bridges diagonal_barrier_rt into transputation language.

import NemS.MFRR.DiagonalBarrier
import NemS.MFRR.BridgeToNEMS
import NemS.MFRR.ChoicePoints
import NemS.MFRR.PSCBundle

/-!
# Diagonal Barrier Bridge

In diagonal-capable frameworks, the record-truth fragment is not
computably decidable. Therefore no total-effective procedure can
replace the internal adjudicator on that fragment.
-/

namespace Transputation
namespace Theorems

/-- **Diagonal fragment not totally effective** (Paper 76 Theorem T5).

In any diagonal-capable framework, record-truth (RT) on the ASR fragment
is not computably decidable.
-/
theorem diagonal_fragment_not_totally_effective
    (F : NemS.Framework) [dc : NemS.MFRR.DiagonalCapable F] :
    ¬ ComputablePred dc.asr.RT :=
  NemS.MFRR.diagonal_barrier_rt F

/-- **PSC + choice + diagonal ⇒ constrained selection** (full bundle).

Under PSC, record-divergent choice, and diagonal capability:
- An internal selector exists, AND
- Record-truth on the diagonal fragment is not computably decidable.
-/
theorem closed_choice_diagonal_forces_constrained_selection
    {F : NemS.Framework} [dc : NemS.MFRR.DiagonalCapable F]
    {IsInternal : F.Selector → Prop}
    (psc : NemS.MFRR.PSCBundle F IsInternal)
    (cd : NemS.MFRR.ChoiceData F)
    (hChoice : NemS.MFRR.HasRecordDivergentChoice F cd) :
    (∃ S : F.Selector, IsInternal S) ∧ ¬ ComputablePred dc.asr.RT :=
  NemS.MFRR.PSC_choice_diagonal_forces_constrained_selection psc cd hChoice

end Theorems
end Transputation
