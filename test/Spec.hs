module Main (main) where

import qualified Helper.Math
import Test.HUnit

test1 = TestCase (assertEqual "3 is 3*3<10" 3 (Helper.Math.integerSquareroot 10))

testlist = TestList [TestLabel "test1" test1]

main :: IO ()
main = do
  runTestTT testlist
  return ()
