-- | Compatibility wrapper around ghc’s "GHC.StgToCmm.Bind".
module GHC.StgToCmm.Bind
  ( module Upstream,
  )
where

#if MIN_VERSION_ghc(9, 0, 0)
import "ghc" GHC.StgToCmm.Bind as Upstream
#else
import "ghc" StgCmmBind as Upstream
#endif
