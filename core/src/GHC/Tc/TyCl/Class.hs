-- | Compatibility wrapper around ghc’s "GHC.Tc.TyCl.Class".
module GHC.Tc.TyCl.Class
  ( module Upstream,
  )
where

#if MIN_VERSION_ghc(9, 0, 0)
import "ghc" GHC.Tc.TyCl.Class as Upstream
#else
import "ghc" TcClassDcl as Upstream
#endif
