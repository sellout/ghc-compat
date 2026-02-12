-- | Compatibility wrapper around ghc’s "GHC.Tc.TyCl".
module GHC.Tc.TyCl
  ( module Upstream,
  )
where

#if MIN_VERSION_ghc(9, 0, 0)
import "ghc" GHC.Tc.TyCl as Upstream
#else
import "ghc" TcTyClsDecls as Upstream
#endif
