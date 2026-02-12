-- | Compatibility wrapper around ghc’s "GHC.Cmm.Dataflow.Label".
module GHC.Cmm.Dataflow.Label
  ( module Upstream,
  )
where

#if MIN_VERSION_ghc(9, 0, 0)
import "ghc" GHC.Cmm.Dataflow.Label as Upstream
#else
import "ghc" Hoopl.Label as Upstream
#endif
