-- | Compatibility wrapper around ghc’s "GHC.ByteCode.Instr".
module GHC.ByteCode.Instr
  ( module Upstream,
  )
where

#if MIN_VERSION_ghc(9, 0, 0)
import "ghc" GHC.ByteCode.Instr as Upstream
#else
import "ghc" ByteCodeInstr as Upstream
#endif
