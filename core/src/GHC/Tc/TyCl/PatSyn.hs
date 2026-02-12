-- | Compatibility wrapper around ghc’s "GHC.Tc.TyCl.PatSyn".
module GHC.Tc.TyCl.PatSyn
  ( module Upstream,
  )
where

#if MIN_VERSION_ghc(9, 0, 0)
import "ghc" GHC.Tc.TyCl.PatSyn as Upstream
#else
import "ghc" TcPatSyn as Upstream
#endif
