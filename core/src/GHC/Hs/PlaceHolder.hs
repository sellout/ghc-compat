-- | Compatibility wrapper around ghc’s "GHC.Hs.PlaceHolder".
module GHC.Hs.PlaceHolder
  ( module Upstream,
  )
where

#if MIN_VERSION_ghc(9, 4, 0)
import "this" Unresolved as Upstream
#elif MIN_VERSION_ghc(9, 0, 0)
import "ghc" GHC.Hs.PlaceHolder as Upstream
#else
import "ghc" PlaceHolder as Upstream
#endif
