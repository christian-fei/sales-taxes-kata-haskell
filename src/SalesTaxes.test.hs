module Main
where
import Test.HUnit
import Good
import SalesTaxes

main = do runTestTT tests

tests = TestList [
  calculatesPriceForGoodWithBasicSalesTax,
  calculatesPriceForGoodExemptOfBasicSalesTax
  ]

good = Good {price = 14.99, kind = Electronics, imported = False}
basicTaxExemptGood = Good {price = 12.49, kind = Book, imported = False}

calculatesPriceForGoodWithBasicSalesTax =
  priceFor good ~?= 16.49

calculatesPriceForGoodExemptOfBasicSalesTax =
  priceFor basicTaxExemptGood ~?= 12.49
