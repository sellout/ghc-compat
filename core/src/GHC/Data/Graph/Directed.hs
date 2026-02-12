-- | Compatibility wrapper around ghc’s "GHC.Data.Graph.Directed".
module GHC.Data.Graph.Directed
  ( module Upstream,
  )
where

#if MIN_VERSION_ghc(9, 0, 0)
import "ghc" GHC.Data.Graph.Directed as Upstream
#else
import "ghc" Digraph as Upstream
#endif
