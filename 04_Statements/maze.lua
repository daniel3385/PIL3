-- labyrinth game

function action1()
 print("ROOM 1 ------->  ROOM 3")
end

function action2()
 print("ROOM 1 ------->  ROOM 2")
end

function action3()
 print("ROOM 2 ------->  ROOM 3")
end

function action4()
 print("ROOM 2 ------->  ROOM 1")
end

function action5()
 print("ROOM 3 ------->  ROOM 1")
end

function action6()
 print("ROOM 3 ------->  ROOM 4")
end

function FSM(t)
  local a = {}
  for _,v in ipairs(t) do
    local old, event, new, action = v[1], v[2], v[3], v[4]
    if a[old] == nil then a[old] = {} end
    a[old][event] = {new = new, action = action}
  end
  return a
end

fsm = FSM{
  {"ST_room1", "EV_south", "ST_room3", action1},
  {"ST_room1", "EV_east", "ST_room2", action2},
  {"ST_room2", "EV_south", "ST_room4", action3},
  {"ST_room2", "EV_west", "ST_room1", action4},
  {"ST_room3", "EV_north", "ST_room1", action5},
  {"ST_room3", "EV_east", "ST_room4", action6},
}


--[[
   Ex: tableOfMovements = {1, 4}, go from room1 to room 3, then from room3
   to room 4 and win!
--]]

local events = {"EV_south", "EV_east", "EV_west", "EV_north"}
function moveInMaze(tableOfMovements)
    local state = "ST_room1"
    local result = false
    print("Begin game:")
    for _,move in ipairs(tableOfMovements) do
        local a = fsm[state][events[tonumber(move)]]
        if type(a) == "table" then
            a.action()
            state = a.new
        end
        if state == "ST_room4" then
            print("End game: you win!\n")
            result = true
            break
        end
    end
    if state ~= "ST_room4" then
        print("End game: you lose!\n")
    end
    return result 
end
		



