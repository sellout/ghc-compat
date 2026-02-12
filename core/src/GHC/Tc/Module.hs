-- | Compatibility wrapper around ghc’s "GHC.Tc.Module".
module GHC.Tc.Module
  ( module Upstream,
  )
where

#if MIN_VERSION_ghc(9, 0, 0)
import "ghc" GHC.Tc.Module as Upstream
#else
import "ghc" TcRnDriver as Upstream
#endif
