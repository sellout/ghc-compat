-- | Compatibility wrapper around ghc’s "GHC.Tc.Utils.Zonk".
module GHC.Tc.Utils.Zonk
  ( module Upstream,
  )
where

#if MIN_VERSION_ghc(9, 0, 0)
import "ghc" GHC.Tc.Utils.Zonk as Upstream
#else
import "ghc" TcHsSyn as Upstream
#endif
