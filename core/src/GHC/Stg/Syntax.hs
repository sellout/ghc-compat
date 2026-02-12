-- | Compatibility wrapper around ghc’s "GHC.Stg.Syntax".
module GHC.Stg.Syntax
  ( module Upstream,
  )
where

#if MIN_VERSION_ghc(9, 0, 0)
import "ghc" GHC.Stg.Syntax as Upstream
#else
import "ghc" StgSyn as Upstream
#endif
