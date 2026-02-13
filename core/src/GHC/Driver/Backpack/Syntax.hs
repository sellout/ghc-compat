-- | Compatibility wrapper around ghc’s "GHC.Driver.Backpack.Syntax".
module GHC.Driver.Backpack.Syntax
  ( module Upstream,
  )
where

#if MIN_VERSION_ghc(9, 0, 0)
import "ghc" GHC.Driver.Backpack.Syntax as Upstream
#elif MIN_VERSION_ghc(8, 2, 0)
import "ghc" BkpSyn as Upstream
#else
import "this" Unresolved as Upstream
#endif
