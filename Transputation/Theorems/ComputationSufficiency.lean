-- Transputation.Theorems.ComputationSufficiency
-- In categorical regimes, ordinary computation suffices (Paper 76 Theorem T0).
-- No transputation required when continuation is uniquely determined.

import NemS.Core.Trichotomy
import NemS.MFRR.PSCBundle

/-!
# Computation Sufficiency Theorem

If admissible continuation is uniquely fixed at the record/observational level
(categorical regime), ordinary effective rule evolution suffices.
Transputation is not required.
-/

namespace Transputation
namespace Theorems

/-- **Computation sufficient of categorical** (Paper 76 Theorem T0).

Under PSC, if the framework is categorical, then an internal selector
exists in the "trivial" sense (categoricity means the selector is
uniquely determined by the record). Ordinary computation suffices
for continuation-selection; no nontrivial adjudicative layer is forced.

We state this as: PSC + categorical ⇒ the framework does not need
external selection (NEMS), and categoricity itself provides the
determination. The "computation sufficient" reading: when continuation
is uniquely fixed, no internal adjudicator beyond algorithmic evolution
is required.
-/
theorem computation_sufficient_of_categorical
    {F : NemS.Framework} {IsInternal : F.Selector → Prop}
    (psc : NemS.MFRR.PSCBundle F IsInternal)
    (_hCat : F.ObsCategorical) :
    NemS.Framework.NEMS F IsInternal :=
  psc.nems

end Theorems
end Transputation
