-- | Compatibility wrapper around ghc’s "GHC.Cmm.Sink".
module GHC.Cmm.Sink
  ( module Upstream,
  )
where

#if MIN_VERSION_ghc(9, 0, 0)
import "ghc" GHC.Cmm.Sink as Upstream
#else
import "ghc" CmmSink as Upstream
#endif
