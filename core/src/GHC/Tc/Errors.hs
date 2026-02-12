-- | Compatibility wrapper around ghc’s "GHC.Tc.Errors".
module GHC.Tc.Errors
  ( module Upstream,
  )
where

#if MIN_VERSION_ghc(9, 0, 0)
import "ghc" GHC.Tc.Errors as Upstream
#else
import "ghc" TcErrors as Upstream
#endif
