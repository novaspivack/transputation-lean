-- transputation-lean: Machine-checked theorems for Paper 76 (Formal Theory of Transputation)
-- and interface layer for Paper 77 (DSAC realization).
-- Build from ~/transputation-lean; do not build from long symlink path.

import Transputation.Core.Frameworks
import Transputation.Core.Computation
import Transputation.Core.Choice
import Transputation.Core.Internality
import Transputation.Core.Diagonal
import Transputation.Core.Definitions
import Transputation.Theorems.ComputationSufficiency
import Transputation.Theorems.ForcedAdjudication
import Transputation.Theorems.DiagonalBarrierBridge
import Transputation.Theorems.NoCollapse
import Transputation.Theorems.Classification
import Transputation.Interfaces.Realization
import Transputation.Interfaces.DSAC
import Transputation.Interfaces.ScenarioWitnesses
