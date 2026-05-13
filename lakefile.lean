import Lake
open Lake DSL

package «transputation» where

require «nems-lean» from "../nems-lean"

require mathlib from git
  "https://github.com/leanprover-community/mathlib4.git" @ "v4.29.1"

@[default_target]
lean_lib «Transputation» where
  globs := #[.submodules `Transputation]
