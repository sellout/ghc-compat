-- | Compatibility wrapper around ghc’s "GHC.Cmm.Dataflow.Label".
module GHC.Cmm.Dataflow.Label
  ( module Upstream,
  )
where

#if MIN_VERSION_ghc(9, 0, 0)
import "ghc" GHC.Cmm.Dataflow.Label as Upstream
#elif MIN_VERSION_ghc(8, 4, 0)
import "ghc" Hoopl.Label as Upstream
#elif MIN_VERSION_ghc(8, 2, 0)
import "this" Unresolved as Upstream
#else
import "ghc" Hoopl.Label as Upstream
#endif
