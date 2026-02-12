-- | Compatibility wrapper around ghc’s "GHC.Tc.Gen.Splice".
module GHC.Tc.Gen.Splice
  ( module Upstream,
  )
where

#if MIN_VERSION_ghc(9, 0, 0)
import "ghc" GHC.Tc.Gen.Splice as Upstream
#else
import "ghc" TcSplice as Upstream
#endif
