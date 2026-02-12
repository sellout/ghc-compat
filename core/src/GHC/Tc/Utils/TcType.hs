-- | Compatibility wrapper around ghc’s "GHC.Tc.Utils.TcType".
module GHC.Tc.Utils.TcType
  ( module Upstream,
  )
where

#if MIN_VERSION_ghc(9, 0, 0)
import "ghc" GHC.Tc.Utils.TcType as Upstream
#else
import "ghc" TcType as Upstream
#endif
