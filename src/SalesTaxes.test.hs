module Main
where
import Test.HUnit
import Good
import SalesTaxes

main = do runTestTT tests

tests = TestList [
  calculatesPriceForGoodWithBasicSalesTax,
  calculatesPriceForGoodExemptOfBasicSalesTax,
  calculatesPriceForImportedGoodExemptOfBasicSalesTax
  ]

good = Good {price = 14.99, kind = Electronics, imported = False}
basicTaxExemptGood = Good {price = 12.49, kind = Book, imported = False}
importedGood = Good {price = 10.00, kind = Food, imported = True}

calculatesPriceForGoodWithBasicSalesTax =
  priceFor good ~?= 16.49

calculatesPriceForGoodExemptOfBasicSalesTax =
  priceFor basicTaxExemptGood ~?= 12.49

calculatesPriceForImportedGoodExemptOfBasicSalesTax =
  priceFor importedGood ~?= 10.50
