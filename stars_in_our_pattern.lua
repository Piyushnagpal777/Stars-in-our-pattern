--[[
*****************************************************************************************
*
*
*  This script is code stub for CodeChef problem code STAR_LUA
*  under contest PYLT20TS in Task 0 of Nirikshak Bot (NB) Theme (eYRC 2020-21).
*
*  Filename:			STAR_LUA.lua
*  Created:				07/10/2020
*  Last Modified:		07/10/2020
*  Author:				e-Yantra Team
*
*****************************************************************************************
]]--

--[[
2
14
5
]]

-- generatePattern function to print the pattern of start(*) and hash(#)
function generatePattern(n)
  local j = 1
  local x = 1
  for j=1, tonumber(n) do
    for x=1, tonumber(n - j + 1) do
      if (x%5 ~= 0) then
        io.write("*", " ")
      else
        io.write("#", " ")
      end
    end
    io.write("\n")
    j = j + 1
  end
end

-- read the test cases input
tc = tonumber(io.read())
n = {}
-- for each case, call the generatePattern function to print the pattern
for i=1, tc do
  table.insert(n, 1, tonumber(io.read()))
  i = i + 1
end

for i=0, tc-1 do
  generatePattern(n[tc - i])
  i = i + 1
end
