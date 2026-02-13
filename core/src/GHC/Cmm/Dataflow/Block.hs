-- | Compatibility wrapper around ghc’s "GHC.Cmm.Dataflow.Block".
module GHC.Cmm.Dataflow.Block
  ( module Upstream,
  )
where

#if MIN_VERSION_ghc(9, 0, 0)
import "ghc" GHC.Cmm.Dataflow.Block as Upstream
#elif MIN_VERSION_ghc(8, 4, 0)
import "ghc" Hoopl.Block as Upstream
#elif MIN_VERSION_ghc(8, 2, 0)
import "this" Unresolved as Upstream
#else
import "ghc" Hoopl.Block as Upstream
#endif
