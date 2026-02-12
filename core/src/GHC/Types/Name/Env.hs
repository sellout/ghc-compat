-- | Compatibility wrapper around ghc’s "GHC.Types.Name.Env".
module GHC.Types.Name.Env
  ( module Upstream,
  )
where

#if MIN_VERSION_ghc(9, 0, 0)
import "ghc" GHC.Types.Name.Env as Upstream
#else
import "ghc" NameEnv as Upstream
#endif
