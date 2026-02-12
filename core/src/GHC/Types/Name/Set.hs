-- | Compatibility wrapper around ghc’s "GHC.Types.Name.Set".
module GHC.Types.Name.Set
  ( module Upstream,
  )
where

#if MIN_VERSION_ghc(9, 0, 0)
import "ghc" GHC.Types.Name.Set as Upstream
#else
import "ghc" NameSet as Upstream
#endif
