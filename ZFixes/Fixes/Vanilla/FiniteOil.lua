--[[ Copyright (c) Porkchop13 ]]

local drr = data.raw.resource

if drr["crude-oil"] then

    drr["crude-oil"].infinite = false
    drr["crude-oil"].minimum = 25000
    drr["crude-oil"].normal = 100000
    drr["crude-oil"].infinite_depletion_amount = 5
    drr["crude-oil"].minable ={
        mining_time = 0.275,
        results = {
            {
                type = "fluid",
                name = "crude-oil",
                amount_min = 5,
                amount_max = 5,
                probability = 1
            }
        }
    }
end

if drr["deep_oil"] then
    drr["deep_oil"].infinite = false
end