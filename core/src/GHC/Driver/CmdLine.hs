-- | Compatibility wrapper around ghc’s "GHC.Driver.CmdLine".
module GHC.Driver.CmdLine
  ( module Upstream,
  )
where

#if MIN_VERSION_ghc(9, 0, 0)
import "ghc" GHC.Driver.CmdLine as Upstream
#else
import "ghc" CmdLineParser as Upstream
#endif
