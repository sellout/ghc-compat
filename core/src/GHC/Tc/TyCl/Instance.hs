-- | Compatibility wrapper around ghc’s "GHC.Tc.TyCl.Instance".
module GHC.Tc.TyCl.Instance
  ( module Upstream,
  )
where

#if MIN_VERSION_ghc(9, 0, 0)
import "ghc" GHC.Tc.TyCl.Instance as Upstream
#else
import "ghc" TcInstDcls as Upstream
#endif
