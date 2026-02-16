{-# OPTIONS_GHC -fno-warn-orphans #-}

module GHC.Driver.Flags.Compat
  (
  )
where

#if !MIN_VERSION_ghc(8, 2, 0)
import qualified "this" GHC.Driver.Flags.Upstream as Upstream
import "this" GHC.Prelude.Basic (Eq, Show)

deriving instance Eq Upstream.Language

deriving instance Show Upstream.Language
#endif
