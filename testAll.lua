
require('externals.luaSimpleTest.sources.luaSimpleTest')
require('01_GettingStarted.factorial')
require('03_Expressions.bool')
require('03_Expressions.solve_polynomial')
require('04_Statements.maze')
require('05_Functions.concat')
require('05_Functions.return')


local test = Test:new()


local block1 = test:blockNew()
block1:setDescription("Factorial tests")

block1:equal(fact(5), 120)
block1:equal(fact(0), 1)
block1:equal(fact(-1), nil)
block1:equal(fact(1.2), nil)

local block2 = test:blockNew()
block2:setDescription("Verifying if it is bool without using type")

block2:equal(verifyBool(true), true)
block2:equal(verifyBool(false), true)
block2:equal(verifyBool("true"), false)
block2:equal(verifyBool("false"), false)
block2:equal(verifyBool(nil), false)
block2:equal(verifyBool(0), false)

local block3 = test:blockNew()
block3:setDescription("Solving a polynomial")
block3:equal(solve_polynomial({2, 4, 8}, 10), 842)
block3:equal(solve_polynomial({5}, 10), 5)

local block4 = test:blockNew()
block4:setDescription("Moving in a maze game")
block4:equal(moveInMaze({1, 2}), true)
block4:equal(moveInMaze({2, 3, 4, 1, 1}), false)

local block5 = test:blockNew()
block5:setDescription("Concat strings")
block5:equal(concat("daniel","cabral"), "danielcabral")
block5:equal(concat("", "parte1", " parte2"), "parte1 parte2")
block5:equal(concat(nil), "")

local block6 = test:blockNew()
block6:setDescription("return but first")
local a1= return_but_first({1, 2, 3, 4, 5})
block6:equal(return_but_first(1, 2, 3, 4, 5), {2, 3, 4, 5})
block6:equal(return_but_first(1), {})
block6:equal(return_but_first(), {})

test:runTests()

