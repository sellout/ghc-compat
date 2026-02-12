-- | Compatibility wrapper around ghc’s "GHC.Hs.Lit".
module GHC.Hs.Lit
  ( module Upstream,
  )
where

#if MIN_VERSION_ghc(9, 0, 0)
import "ghc" GHC.Hs.Lit as Upstream
#else
import "ghc" HsLit as Upstream
#endif
