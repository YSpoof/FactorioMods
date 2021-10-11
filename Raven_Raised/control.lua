global.flycar = {{},{}}

local function driving_changed_state (idx, ent)
	local player = game.players[idx]
	local cars = global.flycar
	if player.driving then
		if ent and ent.name == "raven-1" then
			local havent = true
			for _,fly in pairs(cars[1]) do
				if ent == fly then
					havent = false
					break
				end
			end
			if havent then
				table.insert(global.flycar[1], ent)
			end
		end
	end
end

local function car_flying ()
	local cars = global.flycar
	for i,j in pairs(cars[1]) do
		if j.valid then
			if j.speed >= 0.3 then
				local fly = {riding_state = j.riding_state, position = j.position, speed = j.speed, orientation = j.orientation, health = j.health, itemburn = j.burner.currently_burning, fuel = j.burner.remaining_burning_fuel, idx = j.get_driver(), passengers = j.get_passenger(), surface = j.surface, inv1 = j.get_inventory(1).get_contents(), inv2 = j.get_inventory(2).get_contents(), inv3 = j.get_inventory(3).get_contents(), force = j.force}
				local grid = {}
				local gridIMB
				if j.grid then
					for _,e in pairs(j.grid.equipment) do
					table.insert(grid, {name = e.name, position = e.position, shield = e.shield, energy = e.energy})
					end
					gridIMB = j.grid.inhibit_movement_bonus
				end
				j.destroy({raise_destroy=true})
				j = fly.surface.create_entity{name = "raven-2", position = fly.position, force =  fly.force, raise_built=true}
				for y,u in pairs(fly.inv1) do
					j.get_inventory(1).insert({name = y, count = u})
				end
				for y,u in pairs(fly.inv2) do
					j.get_inventory(2).insert({name = y, count = u})
				end
				for y,u in pairs(fly.inv3) do
					j.get_inventory(3).insert({name = y, count = u})
				end
				j.riding_state = fly.riding_state
				j.orientation = fly.orientation
				j.speed = fly.speed + 0.002
				j.health = fly.health
				j.burner.currently_burning = fly.itemburn
				j.burner.remaining_burning_fuel = fly.fuel
				if j.grid then
					for _,e in pairs(grid) do
						local equip = j.grid.put({name = e.name, position = e.position})
						if equip and equip.valid then
							if equip.max_shield > 0 then equip.shield = e.shield end
							if equip.max_energy > 0 then equip.energy = e.energy end
						end
					end
					if gridIMB then j.grid.inhibit_movement_bonus = true end
				end
				j.set_driver(fly.idx)
				j.set_passenger(fly.passengers)
				local shadow = fly.surface.create_entity{name = "raven-shadow", position = fly.position, force =  game.forces.neutral}
				shadow.insert({name = "solid-fuel", count = 50})
				shadow.orientation = fly.orientation
				shadow.speed = fly.speed
				table.insert(cars[2], {j,shadow,0.1,100})
			elseif j.speed == 0 and j.get_driver() == nil and j.get_passenger() == nil then
				table.remove(cars[1], i)
			end
		else table.remove(cars[1], i)
		end
	end
	for i,j in pairs(cars[2]) do
		if j[1].valid then
			if j[4] ~= nil and j[4] > 0 then
				j[1].speed = j[1].speed + 0.001
				j[4] = j[4] - 1
			end
			if j[1].speed <= 0.3 then
				local idx = j[1].get_driver()
				local passengers = j[1].get_passenger()
				local surface = j[1].surface
				local tilename = surface.get_tile(math.floor(j[1].position.x), math.floor(j[1].position.y)).name
				if string.match(tilename, "water") then
					j[1].die()
					j[2].destroy({raise_destroy=true})
					if idx ~= nil then
						if idx.valid then
							local position = idx.position
							tilename = surface.get_tile(math.floor(position.x), math.floor(position.y)).name
							if string.match(tilename, "water") then
								idx.die()
								if passengers ~= nil then
									if passengers.valid then passengers.die() end
								end
								return
							else idx.health = idx.health - math.random(1,52)
								if idx.health == 0 then idx.die() return end
							end
						end
					end
				else
					local fly = {riding_state = j[1].riding_state, position = j[1].position, speed = j[1].speed, orientation = j[1].orientation, health = j[1].health, itemburn = j[1].burner.currently_burning, fuel = j[1].burner.remaining_burning_fuel, idx = j[1].get_driver(), passengers = j[1].get_passenger(), surface = j[1].surface, inv1 = j[1].get_inventory(1).get_contents(), inv2 = j[1].get_inventory(2).get_contents(), inv3 = j[1].get_inventory(3).get_contents(), force = j[1].force}
					local grid = {}
					if j[1].grid then
						for _,e in pairs(j[1].grid.equipment) do
						table.insert(grid, {name = e.name, position = e.position, shield = e.shield, energy = e.energy})
						end
						gridIMB = j[1].grid.inhibit_movement_bonus
					end
					j[1].destroy({raise_destroy=true})
					j[2].destroy({raise_destroy=true})
					j = fly.surface.create_entity{name = "raven-1", position = fly.position, force =  fly.force}
					for y,u in pairs(fly.inv1) do
						j.get_inventory(1).insert({name = y, count = u})
					end
					for y,u in pairs(fly.inv2) do
						j.get_inventory(2).insert({name = y, count = u})
					end
					for y,u in pairs(fly.inv3) do
						j.get_inventory(3).insert({name = y, count = u})
					end
					j.riding_state = fly.riding_state
					j.orientation = fly.orientation
					j.speed = fly.speed
					j.health = fly.health
					j.burner.currently_burning = fly.itemburn
					j.burner.remaining_burning_fuel = fly.fuel
					if j.grid then
						for _,e in pairs(grid) do
							local equip = j.grid.put({name = e.name, position = e.position})
							if equip and equip.valid then
								if equip.max_shield > 0 then equip.shield = e.shield end
								if equip.max_energy > 0 then equip.energy = e.energy end
							end
						end
						if gridIMB then j.inhibit_movement_bonus = true end
					end
					j.set_driver(fly.idx)
					j.set_passenger(fly.passengers)
					table.insert(cars[1], j)
				end
			else
				local chight = (j[1].speed - 0.3)*10 - j[3]
				j[3] = j[3] + chight
				j[1].teleport({j[1].position.x, j[1].position.y - chight})
				j[2].teleport({j[1].position.x + j[3], j[1].position.y + j[3]})
				j[2].orientation = j[1].orientation
				j[2].speed = j[1].speed
			end
		else
			if j[2].valid then j[2].destroy({raise_destroy=true}) end
			table.remove(cars[2], i)
		end
	end
end

script.on_event(defines.events.on_player_driving_changed_state, function(event)
	driving_changed_state(event.player_index, event.entity)
end)

script.on_event(defines.events.on_tick, function()
	car_flying()
end)