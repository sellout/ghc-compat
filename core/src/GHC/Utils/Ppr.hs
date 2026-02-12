-- | Compatibility wrapper around ghc’s "GHC.Utils.Ppr".
module GHC.Utils.Ppr
  ( module Upstream,
  )
where

#if MIN_VERSION_ghc(9, 0, 0)
import "ghc" GHC.Utils.Ppr as Upstream
#else
import "ghc" Pretty as Upstream
#endif
