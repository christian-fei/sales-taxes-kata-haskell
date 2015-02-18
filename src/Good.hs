module Good
(
  Good(..)
)
where

data Good = Good {price :: Double, imported :: Bool} deriving (Show)
