-- | Compatibility wrapper around ghc’s "GHC.Builtin.Types.Literals".
module GHC.Builtin.Types.Literals
  ( module Upstream,
  )
where

#if MIN_VERSION_ghc(9, 0, 0)
import "ghc" GHC.Builtin.Types.Literals as Upstream
#else
import "ghc" TcTypeNats as Upstream
#endif
