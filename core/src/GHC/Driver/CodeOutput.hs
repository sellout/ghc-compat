-- | Compatibility wrapper around ghc’s "GHC.Driver.CodeOutput".
module GHC.Driver.CodeOutput
  ( module Upstream,
  )
where

#if MIN_VERSION_ghc(9, 0, 0)
import "ghc" GHC.Driver.CodeOutput as Upstream
#else
import "ghc" CodeOutput as Upstream
#endif
