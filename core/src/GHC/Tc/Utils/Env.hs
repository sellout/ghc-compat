-- | Compatibility wrapper around ghc’s "GHC.Tc.Utils.Env".
module GHC.Tc.Utils.Env
  ( module Upstream,
  )
where

#if MIN_VERSION_ghc(9, 0, 0)
import "ghc" GHC.Tc.Utils.Env as Upstream
#else
import "ghc" TcEnv as Upstream
#endif
