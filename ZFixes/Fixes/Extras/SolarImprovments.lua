local dr = data.raw

for _, solar in pairs(dr["solar-panel"]) do

local wattage = string.match(solar.production, "%a+")
local oldproduction = string.match(solar.production, "%d+")
local newproduction = oldproduction * 4 .. wattage

solar.production = newproduction

end

for _, accumulator in pairs(dr["accumulator"]) do

local source = accumulator.energy_source

local wattage = string.match(source.buffer_capacity, "%a+")
local wattage2 = string.match(source.input_flow_limit, "%a+")
local wattage3 = string.match(source.output_flow_limit, "%a+")

local oldbuffer = string.match(source.buffer_capacity, "%d+")
local newbuffer = oldbuffer * 2 .. wattage

local oldinputflow = string.match(source.input_flow_limit, "%d+")
local newinputflow = oldinputflow * 2 .. wattage2

local oldoutputflow = string.match(source.output_flow_limit, "%d+")
local newoutputflow = oldoutputflow * 2 .. wattage3

source.buffer_capacity = newbuffer
source.input_flow_limit = newinputflow
source.output_flow_limit = newoutputflow

end