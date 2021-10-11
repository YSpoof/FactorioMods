--[[ Copyright (c) 2017 Optera ]]

local get_energy_value = require('__flib__.data-util').get_energy_value

local expand_charging_spots=
{
  ["roboport"] = true,
  ["roboport_nosignal"] = true,
  ["bob-roboport-2"] = true,
  ["bob-roboport-3"] = true,
  ["bob-roboport-4"] = true,
}

for _, roboport in pairs(data.raw["roboport"]) do
  if expand_charging_spots[roboport.name] then
    -- add 8 charging positions
    roboport.charging_offsets =
    {
      {-1.2, -0.8}, {-1.8, -0.2},
      {1.8, -0.2}, {1.2, -0.8},
      {1.8, 1.2}, {1.2, 1.8},
      {-1.2, 1.8}, {-1.8, 1.2},
    }

    -- increase energy flow to accommodate 8 bots at 1MW each
    local value, unit = get_energy_value(roboport.energy_source.input_flow_limit)
    if value then
      roboport.energy_source.input_flow_limit = (value * 2)..unit
    end
  end

end