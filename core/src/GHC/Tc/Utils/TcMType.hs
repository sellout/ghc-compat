-- | Compatibility wrapper around ghc’s "GHC.Tc.Utils.TcMType".
module GHC.Tc.Utils.TcMType
  ( module Upstream,
  )
where

#if MIN_VERSION_ghc(9, 0, 0)
import "ghc" GHC.Tc.Utils.TcMType as Upstream
#else
import "ghc" TcMType as Upstream
#endif
