-- | Compatibility wrapper around ghc’s "GHC.Iface.Env".
module GHC.Iface.Env
  ( module Upstream,
  )
where

#if MIN_VERSION_ghc(9, 0, 0)
import "ghc" GHC.Iface.Env as Upstream
#else
import "ghc" IfaceEnv as Upstream
#endif
