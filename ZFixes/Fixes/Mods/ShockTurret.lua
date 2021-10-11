if mods["ShockTurret"] then

local dr = data.raw
local drt = dr["technology"]

drt["adikings-mining-speed"] = nil
drt["adikings-shock-turret-to-laser-turret"] = nil

dr["projectile"]["adikings-shock-lightning"].action.action_delivery.target_effects.damage = {amount = 6, type = "electric"}

dr["electric-turret"]["adikings-shock-turret"].attack_parameters.ammo_type.energy_consumption = "400kJ"

end