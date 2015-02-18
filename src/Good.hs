module Good
(
  Good(..),
  Kind(..)
)
where

data Kind = Electronics | Food | Book | Medicine deriving (Show, Eq)

data Good = Good {price :: Double, kind :: Kind, imported :: Bool} deriving (Show)
