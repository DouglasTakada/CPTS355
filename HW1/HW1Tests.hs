{- Example of using the HUnit unit test framework.  See  http://hackage.haskell.org/package/HUnit for additional documentation.
To run the tests type "run" at the Haskell prompt.  -} 

module HW1Tests
    where

import Test.HUnit
import Data.Char
import Data.List (sort)
import HW1

--idea for test cases: domain of input, maximum, minimum, inside/outside boundaries, typical values, error values

-- P1(a) count tests  

p1a_test4 = TestCase (assertEqual "count-test4"
                                 0
                                 (count 0 []) )
p1a_test5 = TestCase (assertEqual "count-test5"
                                 0
                                 (count 0 [1,2,3,4,5,6,7,8,9]) )

-- P1(b) diff tests

p1b_test4 = TestCase (assertEqual "diff-test4"
                                 0
                                 (count 0 []) )
p1b_test5 = TestCase (assertEqual "diff-test5"
                                 0
                                 (count 0 [1,2,3,4,5,6,7,8,9]) )

-- P1(c) bag_diff tests

p1c_test5 = TestCase (assertEqual "bag_diff-test5"
                                 0
                                 (count 0 []) )
p1c_test6 = TestCase (assertEqual "bag_diff-test6"
                                 0
                                 (count 0 [1,2,3,4,5,6,7,8,9]))

-- P2  everyN tests

p2_test5 = TestCase (assertEqual "everyN-test5"
                                 0
                                 (count 0 []) )
p2_test6 = TestCase (assertEqual "everyN-test6"
                                 0
                                 (count 0 [1,2,3,4,5,6,7,8,9]))

-- P3(a) make_sparse tests

p3a_test5 = TestCase (assertEqual "make_sparse-test5"
                                 0
                                 (count 0 []) )
p3a_test6 = TestCase (assertEqual "make_sparse-test6"
                                 0
                                 (count 0 [1,2,3,4,5,6,7,8,9]))

-- P3(b) compress tests

p3b_test5 = TestCase (assertEqual "compress-test5"
                                 0
                                 (count 0 []) )
p3b_test6 = TestCase (assertEqual "compress-test6"
                                 0
                                 (count 0 [1,2,3,4,5,6,7,8,9]))

-- P4 added_sums tests

p4_test4 = TestCase (assertEqual "added_sums-test4"
                                 0
                                 (count 0 []) )
p4_test5 = TestCase (assertEqual "added_sums-test5"
                                 0
                                 (count 0 [1,2,3,4,5,6,7,8,9]))

-- P5 find_routes tests

p5_test4 = TestCase (assertEqual "find_routes-test4"
                                 0
                                 (count 0 [1,2,3,4,5,6,7,8,9]))
p5_test5 = TestCase (assertEqual "find_routes-test5"
                                 0
                                 (count 0 []) )
p5_test6 = TestCase (assertEqual "find_routes-test6"
                                 0
                                 (count 0 [1,2,3,4,5,6,7,8,9]))

-- P6 group_sum tests

p6_test4 = TestCase (assertEqual "group_sum-test4"
                                 0
                                 (count 0 [1,2,3,4,5,6,7,8,9]))
p6_test5 = TestCase (assertEqual "group_sum-test5"
                                 0
                                 (count 0 []) )

-- add the test cases you created to the below list. 
tests = TestList [ TestLabel "Problem 1a- test4 " p1a_test4,
                   TestLabel "Problem 1a- test5 " p1a_test5,
                   TestLabel "Problem 1b- test4 " p1b_test4,
                   TestLabel "Problem 1b- test5 " p1b_test5,
                   TestLabel "Problem 1c- test5 " p1c_test5,
                   TestLabel "Problem 1c- test6 " p1c_test6,

                   TestLabel "Problem 2- test5 " p2_test5,
                   TestLabel "Problem 2- test6 " p2_test6,
                   
                   TestLabel "Problem 3a- test5 " p3a_test5,
                   TestLabel "Problem 3a- test6 " p3a_test6,
                   TestLabel "Problem 3b- test5 " p3b_test5,
                   TestLabel "Problem 3b- test6 " p3b_test6,

                   TestLabel "Problem 4- test4 " p4_test4,
                   TestLabel "Problem 4- test5 " p4_test5,

                   TestLabel "Problem 5- test4 " p5_test4,
                   TestLabel "Problem 5- test5 " p5_test5,
                   TestLabel "Problem 5- test6 " p5_test6,

                   TestLabel "Problem 6- test4 " p6_test4,
                   TestLabel "Problem 6- test5 " p6_test5
                 ]

-- shortcut to run the tests
run = runTestTT  tests