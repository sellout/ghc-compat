-- | Compatibility wrapper around ghc’s "GHC.Driver.MakeFile".
module GHC.Driver.MakeFile
  ( module Upstream,
  )
where

#if MIN_VERSION_ghc(9, 0, 0)
import "ghc" GHC.Driver.MakeFile as Upstream
#else
import "ghc" DriverMkDepend as Upstream
#endif
