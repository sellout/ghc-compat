-- | Compatibility wrapper around ghc’s "GHC.Cmm.ProcPoint".
module GHC.Cmm.ProcPoint
  ( module Upstream,
  )
where

#if MIN_VERSION_ghc(9, 0, 0)
import "ghc" GHC.Cmm.ProcPoint as Upstream
#else
import "ghc" CmmProcPoint as Upstream
#endif
