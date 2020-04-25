module Main (main) where

import qualified Helper.Math
import qualified Validator
import Test.HUnit
import qualified Data.ByteString as B

test1 = TestCase (assertEqual "3 is largest number which satisfies 3 * 3 < 10" 3 (Helper.Math.integerSquareroot 10))

test2 = TestCase (
  assertEqual "validator is active" True (
    Validator.isActiveValidator (
      Validator.Validator B.empty B.empty 0 False 0 0 10 10) 5 ))

testlist = TestList [TestLabel "test1" test1, TestLabel "test2" test2]

main :: IO ()
main = do
  runTestTT testlist
  return ()
