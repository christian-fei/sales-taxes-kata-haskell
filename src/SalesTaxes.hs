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
  | k `elem` [Food,Book,Medicine]  = price g + calc_imported_tax g
  | otherwise        =  price g + calc_basic_tax g + calc_imported_tax g

calc_tax :: Double -> Double -> Double
calc_tax price tax = fromIntegral (round (100 *((fromIntegral $ round (price * tax * 20)) / 20))) / 100

calc_basic_tax :: Good -> Double
calc_basic_tax (Good {price = p}) = calc_tax p basic_sales_tax

calc_imported_tax :: Good -> Double
calc_imported_tax (Good {price = p, imported = True}) = calc_tax p imported_tax
calc_imported_tax _ = 0
