-- | Compatibility wrapper around ghc’s "GHC.Tc.Instance.Typeable".
module GHC.Tc.Instance.Typeable
  ( module Upstream,
  )
where

#if MIN_VERSION_ghc(9, 0, 0)
import "ghc" GHC.Tc.Instance.Typeable as Upstream
#elif MIN_VERSION_ghc(8, 0, 0)
import "ghc" TcTypeable as Upstream
#else
import "this" Unresolved as Upstream
#endif
