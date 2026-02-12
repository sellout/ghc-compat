-- | Compatibility wrapper around ghc’s "GHC.Driver.Backpack.Syntax".
module GHC.Driver.Backpack.Syntax
  ( module Upstream,
  )
where

#if MIN_VERSION_ghc(9, 0, 0)
import "ghc" GHC.Driver.Backpack.Syntax as Upstream
#else
import "ghc" BkpSyn as Upstream
#endif
