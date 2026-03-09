import Lake
open Lake DSL

package «transputation» where

require mathlib from git
  "https://github.com/leanprover-community/mathlib4.git" @ "v4.29.0-rc3"

require «nems-lean» from "../nems-lean"

@[default_target]
lean_lib «Transputation» where
  globs := #[.submodules `Transputation]
