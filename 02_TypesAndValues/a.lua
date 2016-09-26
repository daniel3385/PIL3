a={};
a.a = a

print(a.a.a.a)
--table: 0x14eeea0
-- a is a table, a.a too.

a.a.a.a = 3

-- from here, a is a number and can´t be indexed

print(a.a.a.a)
--[[
    lua: a.lua:10: attempt to index field 'a' (a number value)
    stack traceback:
        a.lua:10: in main chunk
            [C]: in ?
--]]
