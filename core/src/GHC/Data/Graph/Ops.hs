-- | Compatibility wrapper around ghc’s "GHC.Data.Graph.Ops".
module GHC.Data.Graph.Ops
  ( module Upstream,
  )
where

#if MIN_VERSION_ghc(9, 0, 0)
import "ghc" GHC.Data.Graph.Ops as Upstream
#else
import "ghc" GraphOps as Upstream
#endif
