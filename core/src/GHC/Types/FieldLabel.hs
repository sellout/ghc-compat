-- | Compatibility wrapper around ghc’s "GHC.Types.FieldLabel".
module GHC.Types.FieldLabel
  ( module Upstream,
  )
where

#if MIN_VERSION_ghc(9, 0, 0)
import "ghc" GHC.Types.FieldLabel as Upstream
#else
import "ghc" FieldLabel as Upstream
#endif
