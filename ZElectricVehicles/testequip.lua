----------------------------------------------------------------------------
-- Attempt vehicle presence detection

ZhasVehicles = false				-- Are we enabling vehicle components?
ElectricequipmentCategories = {}		-- Detected non-player equipment categories... hopefully.

-- Search and detect specific equipment categories.
local searchCategories = {"aircraft", "car", "tank", "train", "vehicle", "locomotive", "electric-hovercraft-equipment", "armoured-locomotive", "armoured-train", "armoured-vehicle", "spider-vehicle", "hcraft-equipment", "mcraft-equipment", "armor", "vehicle-motor"}
for _,cat in pairs(searchCategories) do
	if ( data.raw["equipment-category"][cat] ) then 
		ZhasVehicles = true
		table.insert(ElectricequipmentCategories, cat) 
	end
end
