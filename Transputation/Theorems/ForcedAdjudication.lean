-- Transputation.Theorems.ForcedAdjudication
-- Closure + record-divergent choice force internal adjudication (transputation).
-- Wraps PSC_and_choice_force_PT from nems-lean.

import NemS.MFRR.BridgeToNEMS
import NemS.MFRR.PTSelector
import NemS.MFRR.ChoicePoints
import NemS.MFRR.PSCBundle

/-!
# Forced Adjudication Theorem

Under closure (PSC) and record-divergent choice, an internal adjudicator
(transputation) is forced. This is the flagship forcing theorem of Paper 76.
-/

namespace Transputation
namespace Theorems

/-- **Closed choice forces transputation** (Paper 76 Theorem T3).

Under PSC and record-divergent choice, there exists an internal selector
(PT / transputation). This is a direct wrapper of `PSC_and_choice_force_PT`.
-/
theorem closed_choice_forces_transputation
    {F : NemS.Framework} {IsInternal : F.Selector → Prop}
    (psc : NemS.MFRR.PSCBundle F IsInternal)
    (cd : NemS.MFRR.ChoiceData F)
    (hChoice : NemS.MFRR.HasRecordDivergentChoice F cd) :
    ∃ _pt : NemS.MFRR.PT F IsInternal, True :=
  NemS.MFRR.PSC_and_choice_force_PT psc cd hChoice

/-- **Closed choice forces internal adjudicator** (extracted selector version).
-/
theorem closed_choice_forces_internal_adjudicator
    {F : NemS.Framework} {IsInternal : F.Selector → Prop}
    (psc : NemS.MFRR.PSCBundle F IsInternal)
    (cd : NemS.MFRR.ChoiceData F)
    (hChoice : NemS.MFRR.HasRecordDivergentChoice F cd) :
    ∃ S : F.Selector, IsInternal S :=
  NemS.MFRR.PSC_and_choice_force_internal_selector psc cd hChoice

end Theorems
end Transputation
