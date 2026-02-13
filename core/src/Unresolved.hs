-- | This module is a more fine-grained placeholder for modules where we haven’t
--   figured out what the correct imports are for all GHC versions.
--
--   Any occurrence of this should be considered a bug. Reducing its scope,
--   thatis, narrowing the range seen with
--
-- > find . -name '*.hs' -exec grep --before-context=1 '"this" Unresolved' {} +
--
--   is a worthwhile improvement.
module Unresolved
  ( unresolvedCompat,
  )
where

-- | A dummy term that serves two purposes.
--
-- 1. avoids GHC complaining about useless imports and
-- 2. when this shows up in a module, you know something’s wrong.
unresolvedCompat :: ()
unresolvedCompat = ()
