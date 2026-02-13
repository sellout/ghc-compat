-- | Compatibility wrapper around ghc’s "GHC.Cmm.Dataflow.Collections".
module GHC.Cmm.Dataflow.Collections
  ( module Upstream,
  )
where

#if MIN_VERSION_ghc(9, 10, 0)
import "this" Unresolved as Upstream
#elif MIN_VERSION_ghc(9, 0, 0)
import "ghc" GHC.Cmm.Dataflow.Collections as Upstream
#elif MIN_VERSION_ghc(8, 4, 0)
import "ghc" Hoopl.Collections as Upstream
#elif MIN_VERSION_ghc(8, 2, 0)
import "this" Unresolved as Upstream
#else
import "ghc" Hoopl.Collections as Upstream
#endif
