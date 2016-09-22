require("module")

local s = "a whole new world"
local t = module.split(s, " ")
module.printList(t)

t = module.split(s, "w")
module.printList(t)
