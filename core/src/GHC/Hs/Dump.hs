-- | Compatibility wrapper around ghc’s "GHC.Hs.Dump".
module GHC.Hs.Dump
  ( module Upstream,
  )
where

#if MIN_VERSION_ghc(9, 0, 0)
import "ghc" GHC.Hs.Dump as Upstream
#else
import "ghc" HsDumpAst as Upstream
#endif
