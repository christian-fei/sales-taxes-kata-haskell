module Good
(
  Good(..),
  Kind(..)
)
where

data Kind = Electronics deriving (Show, Eq)

data Good = Good {price :: Double, kind :: Kind, imported :: Bool} deriving (Show)
