module SalesTaxes
(
  priceFor
)
where

import Good

basic_sales_tax = 0.1

priceFor :: Good -> Double
priceFor g@(Good {price = p}) = calc_basic_sales_tax g

calc_basic_sales_tax :: Good -> Double
calc_basic_sales_tax (Good {price = p}) =
  fromIntegral (round (100 *((fromIntegral $ round (p * basic_sales_tax * 20)) / 20 + p))) / 100
