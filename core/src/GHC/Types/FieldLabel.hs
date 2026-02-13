-- | Compatibility wrapper around ghc’s "GHC.Types.FieldLabel".
module GHC.Types.FieldLabel
  ( module Upstream,
  )
where

#if MIN_VERSION_ghc(9, 0, 0)
import "ghc" GHC.Types.FieldLabel as Upstream
#elif MIN_VERSION_ghc(8, 0, 0)
import "ghc" FieldLabel as Upstream
#else
import "this" Unresolved as Upstream
#endif
