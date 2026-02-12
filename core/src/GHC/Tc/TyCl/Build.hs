-- | Compatibility wrapper around ghc’s "GHC.Tc.TyCl.Build".
module GHC.Tc.TyCl.Build
  ( module Upstream,
  )
where

#if MIN_VERSION_ghc(9, 0, 0)
import "ghc" GHC.Tc.TyCl.Build as Upstream
#else
import "ghc" BuildTyCl as Upstream
#endif
