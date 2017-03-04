
require('externals.luaSimpleTest.sources.luaSimpleTest')
require('01_GettingStarted.factorial')
require('03_Expressions.bool')
require('03_Expressions.solve_polynomial')
require('04_Statements.maze')

local test1_0 = Test:new()
test1_0:setDescription("Factorial tests")

test1_0:equal(fact(5), 120)
test1_0:equal(fact(0), 1)
test1_0:equal(fact(-1), nil)
test1_0:equal(fact(1.2), nil)
test1_0:runTests()

local test3_0 = Test:new()
test3_0:setDescription("Verifying if it is bool without using type")

test3_0:equal(verifyBool(true), true)
test3_0:equal(verifyBool(false), true)
test3_0:equal(verifyBool("true"), false)
test3_0:equal(verifyBool("false"), false)
test3_0:equal(verifyBool(nil), false)
test3_0:equal(verifyBool(0), false)
test3_0:runTests()

local test3_1 = Test:new()
test3_1:setDescription("Solving a polynomial")
test3_1:equal(solve_polynomial({2, 4, 8}, 10), 842)
test3_1:equal(solve_polynomial({5}, 10), 5)
test3_1:runTests()

local test4_0 = Test:new()
test4_0:setDescription("Moving in a maze game")
test4_0:equal(moveInMaze({1, 2}), true)
test4_0:equal(moveInMaze({2, 3, 4, 1, 1}), false)
test4_0:runTests()

