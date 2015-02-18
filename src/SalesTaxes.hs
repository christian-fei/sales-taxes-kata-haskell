module SalesTaxes
(
  priceFor
)
where

import Good

basic_sales_tax = 0.1
imported_tax = 0.05

priceFor :: Good -> Double
priceFor g@(Good {price = p, kind = k})
  | k `elem` [Food,Book,Medicine]  = price g
  | otherwise        =  calc_basic_tax g

calc_basic_tax :: Good -> Double
calc_basic_tax (Good {price = p}) =
  fromIntegral (round (100 *((fromIntegral $ round (p * basic_sales_tax * 20)) / 20 + p))) / 100
