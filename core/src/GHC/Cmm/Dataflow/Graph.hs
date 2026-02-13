-- | Compatibility wrapper around ghc’s "GHC.Cmm.Dataflow.Graph".
module GHC.Cmm.Dataflow.Graph
  ( module Upstream,
  )
where

#if MIN_VERSION_ghc(9, 0, 0)
import "ghc" GHC.Cmm.Dataflow.Graph as Upstream
#elif MIN_VERSION_ghc(8, 4, 0)
import "ghc" Hoopl.Graph as Upstream
#else
import "this" Unresolved as Upstream
#endif
