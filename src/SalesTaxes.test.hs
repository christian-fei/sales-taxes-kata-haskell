module Main
where
import Test.HUnit
import Good
import SalesTaxes

main = do runTestTT tests

tests = TestList [
  calculatesPriceForGoodWithBasicSalesTax
  ]

good = Good {price = 14.99, imported = False}

calculatesPriceForGoodWithBasicSalesTax =
  priceFor good ~?= 16.49
