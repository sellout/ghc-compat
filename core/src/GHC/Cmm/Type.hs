-- | Compatibility wrapper around ghc’s "GHC.Cmm.Type".
module GHC.Cmm.Type
  ( module Upstream,
  )
where

#if MIN_VERSION_ghc(9, 0, 0)
import "ghc" GHC.Cmm.Type as Upstream
#else
import "ghc" CmmType as Upstream
#endif
