-- | Compatibility wrapper around ghc’s "GHC.Cmm.MachOp".
module GHC.Cmm.MachOp
  ( module Upstream,
  )
where

#if MIN_VERSION_ghc(9, 0, 0)
import "ghc" GHC.Cmm.MachOp as Upstream
#else
import "ghc" CmmMachOp as Upstream
#endif
