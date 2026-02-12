-- | Compatibility wrapper around ghc’s "GHC.Tc.TyCl.Utils".
module GHC.Tc.TyCl.Utils
  ( module Upstream,
  )
where

#if MIN_VERSION_ghc(9, 0, 0)
import "ghc" GHC.Tc.TyCl.Utils as Upstream
#else
import "ghc" TcTyDecls as Upstream
#endif
