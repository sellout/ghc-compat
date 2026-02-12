-- | Compatibility wrapper around ghc’s "GHC.Cmm.Dataflow".
module GHC.Cmm.Dataflow
  ( module Upstream,
  )
where

#if MIN_VERSION_ghc(9, 0, 0)
import "ghc" GHC.Cmm.Dataflow as Upstream
#else
import "ghc" Hoopl.Dataflow as Upstream
#endif
