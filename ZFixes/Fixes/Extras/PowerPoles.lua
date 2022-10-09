--[[ Copyright(c) PiggyWhiskey ]]

local dr = data.raw


--Small Pole = 100% Coverage of Wire
-- Coverage Area only

dr["electric-pole"]["small-electric-pole"].supply_area_distance = dr["electric-pole"]["small-electric-pole"].maximum_wire_distance / 2.15


--Medium Poles
-- Coverage Area only

	dr["electric-pole"]["medium-electric-pole"].supply_area_distance = dr["electric-pole"]["medium-electric-pole"].maximum_wire_distance / 2
	if mods["bobpower"] then	
		if settings.startup["bobmods-power-poles"].value == true then
        dr["electric-pole"]["medium-electric-pole-2"].supply_area_distance = dr["electric-pole"]["medium-electric-pole-2"].maximum_wire_distance / 2
        dr["electric-pole"]["medium-electric-pole-3"].supply_area_distance = dr["electric-pole"]["medium-electric-pole-3"].maximum_wire_distance / 2
        dr["electric-pole"]["medium-electric-pole-4"].supply_area_distance = dr["electric-pole"]["medium-electric-pole-4"].maximum_wire_distance / 2
		end
end


--Big Pole to fit Chunks (Capped at 64)
--Wire Distance only

	dr["electric-pole"]["big-electric-pole"].maximum_wire_distance = 32 --1 Chunk
	if mods["bobpower"] then
		if settings.startup["bobmods-power-poles"].value == true then
			dr["electric-pole"]["big-electric-pole-2"].maximum_wire_distance = 40 --1.25 Chunk
			dr["electric-pole"]["big-electric-pole-3"].maximum_wire_distance = 48 --1.5 Chunk
			dr["electric-pole"]["big-electric-pole-4"].maximum_wire_distance = 64 --2 Chunk
		end
end



--Substation to fit Chunks
--Coverage Area and Wire Distance

	dr["electric-pole"]["substation"].maximum_wire_distance = 16 --0.5 Chunk
	dr["electric-pole"]["substation"].supply_area_distance = dr["electric-pole"]["substation"].maximum_wire_distance / 2


if mods["bobpower"] then
	dr["electric-pole"]["substation-2"].maximum_wire_distance = 24 --0.75 Chunk
	dr["electric-pole"]["substation-3"].maximum_wire_distance = 32 --1 Chunk
	dr["electric-pole"]["substation-4"].maximum_wire_distance = 40 --1.25 Chunk

	dr["electric-pole"]["substation-2"].supply_area_distance = dr["electric-pole"]["substation-2"].maximum_wire_distance / 2
	dr["electric-pole"]["substation-3"].supply_area_distance = dr["electric-pole"]["substation-3"].maximum_wire_distance / 2
	dr["electric-pole"]["substation-4"].supply_area_distance = dr["electric-pole"]["substation-4"].maximum_wire_distance / 2    
end


--Roboports and Parts
dr["roboport"]["roboport"].logistics_radius = 32
dr["roboport"]["roboport"].construction_radius = 64

if mods["boblogistics"] then
	--Bobs Logistic Zone Expanders
	dr["roboport"]["bob-logistic-zone-expander"].logistics_radius = 16
	dr["roboport"]["bob-logistic-zone-expander"].construction_radius = 32

	dr["roboport"]["bob-logistic-zone-expander-2"].logistics_radius = 32
	dr["roboport"]["bob-logistic-zone-expander-2"].construction_radius = 64

	dr["roboport"]["bob-logistic-zone-expander-3"].logistics_radius = 48
	dr["roboport"]["bob-logistic-zone-expander-3"].construction_radius = 96
	
	dr["roboport"]["bob-logistic-zone-expander-4"].logistics_radius = 64
	dr["roboport"]["bob-logistic-zone-expander-4"].construction_radius = 128

	if settings.startup["bobmods-logistics-disableroboports"].value == false then
		--Bobs Roboports
		dr["roboport"]["bob-roboport-2"].logistics_radius = 48
		dr["roboport"]["bob-roboport-2"].construction_radius = 98

		dr["roboport"]["bob-roboport-3"].logistics_radius = 72
		dr["roboport"]["bob-roboport-3"].construction_radius = 146

		dr["roboport"]["bob-roboport-4"].logistics_radius = 96
		dr["roboport"]["bob-roboport-4"].construction_radius = 194
	end
end