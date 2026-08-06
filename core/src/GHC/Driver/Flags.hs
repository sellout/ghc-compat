-- | Compatibility wrapper around ghc’s "GHC.Driver.Flags".
module GHC.Driver.Flags
  ( module Upstream,
  )
where

import "this" GHC.Driver.Flags.Compat ()
import "this" GHC.Driver.Flags.Upstream as Upstream
