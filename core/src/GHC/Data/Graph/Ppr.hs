-- | Compatibility wrapper around ghc’s "GHC.Data.Graph.Ppr".
module GHC.Data.Graph.Ppr
  ( module Upstream,
  )
where

#if MIN_VERSION_ghc(9, 0, 0)
import "ghc" GHC.Data.Graph.Ppr as Upstream
#else
import "ghc" GraphPpr as Upstream
#endif
