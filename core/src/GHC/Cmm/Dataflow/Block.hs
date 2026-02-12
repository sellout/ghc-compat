-- | Compatibility wrapper around ghc’s "GHC.Cmm.Dataflow.Block".
module GHC.Cmm.Dataflow.Block
  ( module Upstream,
  )
where

#if MIN_VERSION_ghc(9, 0, 0)
import "ghc" GHC.Cmm.Dataflow.Block as Upstream
#else
import "ghc" Hoopl.Block as Upstream
#endif
