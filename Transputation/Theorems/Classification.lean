-- Transputation.Theorems.Classification
-- Regime classification: categorical | transputational | externally dependent.
-- Wraps PSC_classification and nems_trichotomy.

import NemS.MFRR.BridgeToNEMS
import NemS.MFRR.DiagonalBarrier
import NemS.Core.Trichotomy
import NemS.MFRR.PSCBundle

/-!
# Transputation Classification Theorem

A record-bearing framework falls into a classification:
1. Categorical (ordinary computation sufficient)
2. Transputational (internal adjudicator required; in diagonal regime, not total-effective)
3. Externally dependent (needs external selection)
-/

namespace Transputation
namespace Theorems

/-- **Transputation classification under closure** (Paper 76 Theorem T7).

Under PSC and diagonal capability, a framework is either:
- Categorical (computation-sufficient), or
- Has internal selector AND record-truth not computably decidable (transputational).
-/
theorem transputation_classification
    {F : NemS.Framework} [dc : NemS.MFRR.DiagonalCapable F]
    {IsInternal : F.Selector → Prop}
    (psc : NemS.MFRR.PSCBundle F IsInternal) :
    F.ObsCategorical ∨
    ((∃ S : F.Selector, IsInternal S) ∧ ¬ ComputablePred dc.asr.RT) :=
  NemS.MFRR.PSC_classification psc

/-- **NEMS trichotomy** (full classification).

Every framework satisfies exactly one of:
- Categorical
- Has internal selector (transputational)
- Needs external selection
-/
theorem transputation_trichotomy
    (F : NemS.Framework) (IsInternal : F.Selector → Prop) :
    F.ObsCategorical ∨
    (∃ S : F.Selector, IsInternal S) ∨
    NemS.Framework.NeedsExternalSelection F IsInternal :=
  NemS.Framework.nems_trichotomy F IsInternal

end Theorems
end Transputation
